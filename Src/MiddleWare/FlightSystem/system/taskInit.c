/*
 * Copyright 2025 SUCHAI Flight Software v2 project and contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include "taskInit.h"
#include "repoData.h"
#include "csp/csp_types.h"
#include "csp/interfaces/csp_if_can.h"
#include "csp/interfaces/csp_if_kiss.h"
#include "taskCspKiss.h"

static const char *tag = "taskInit";


extern csp_conf_t csp_conf;
csp_can_interface_data_t can_ifdata;
csp_iface_t can_iface;

//csp_i2c_interface_data_t i2c_ifdata;
//csp_iface_t i2c_iface;



int init_update_status_vars(void);
int init_create_task(void);

#if SCH_COMM_ENABLE

#endif //SCH_COMM_ENABLE

void taskInit(void *param)
{
    int rc = 0;
#ifdef NANOMIND
    on_init_task(NULL);
#endif

    LOGI(tag, "SETUP REPOSITORIES...");
    /* Initialize repositories */

    dat_repo_init(); // Update status repository

    /* Initialize system variables */
    LOGI(tag, "SETUP VARIABLES...");
 //   rc = init_update_status_vars();
    LOGI(tag, "PURGE FLIGHT PLAN...");
//    rc = dat_purge_fp();
    // Init LibCSP system
#if SCH_COMM_ENABLE
    LOGI(tag, "SETUP CSP...");
    rc = init_setup_libcsp(SCH_COMM_NODE);
#endif
    // Create tasks
    LOGI(tag, "CREATE TASKS...");
    rc += init_create_task();

    /**
     * Call app initialization routine
     */
#ifdef SCH_HOOK_INIT
    initAppHook(param);
#endif

    LOGI(tag, "EXIT INIT TASK with code %d\r\n", rc);

    osTaskDelete(NULL);
}

int init_update_status_vars(void) {
    LOGD(tag, "Initializing system variables values...")
    int rc = 0;
//    rc += dat_set_system_var(dat_obc_hrs_wo_reset, 0);
//    rc += dat_set_system_var(dat_obc_reset_counter, dat_get_system_var(dat_obc_reset_counter) + 1);
//    rc += dat_set_system_var(dat_obc_sw_wdt, 0);  // Reset the gnd wdt on boot
    return rc;
}

#if SCH_COMM_ENABLE

#endif

int init_create_task(void) {
    LOGD(tag, "Creating client tasks ...");
    int t_ok;


    /* Creating clients tasks */
#if SCH_CON_ENABLED
    t_ok = osCreateTask(taskConsole, "console", SCH_TASK_CON_STACK, NULL, 3, NULL);
    if(t_ok != 0) LOGE(tag, "Task console not created!");
#endif
#if SCH_COMM_ENABLE
    t_ok = osCreateTask(taskCspKiss, "kiss", SCH_TASK_COM_STACK, NULL, 2, NULL);

    t_ok += osCreateTask(taskCommunications, "comm", SCH_TASK_COM_STACK, NULL, 2, NULL);
    if(t_ok != 0) LOGE(tag, "Task communications not created!");
#endif
#if SCH_FP_ENABLED
//    t_ok = osCreateTask(taskFlightPlan,"flightplan", SCH_TASK_FPL_STACK, NULL, 2, &(thread_id[2]));
    if(t_ok != 0) LOGE(tag, "Task flightplan not created!");
#endif

    return t_ok;
}

/**
 * Set ZMQ interfaces as default route
 */
#if defined(SCH_OS_LINUX) && (SCH_COMM_ENABLE)
void csp_add_zmq_iface(int node)
{
    /* Set ZMQ interface as a default route*/
    uint8_t addr = (uint8_t)node;
    uint8_t *rxfilter = &addr;
    unsigned int rxfilter_count = 1;

    csp_zmqhub_init_w_name_endpoints_rxfilter(CSP_ZMQHUB_IF_NAME,
                                              rxfilter, rxfilter_count,
                                              SCH_COMM_ZMQ_OUT, SCH_COMM_ZMQ_IN,
                                              &csp_if_zmqhub);
    csp_route_set(CSP_DEFAULT_ROUTE, csp_if_zmqhub, CSP_NODE_MAC);
}
#endif
