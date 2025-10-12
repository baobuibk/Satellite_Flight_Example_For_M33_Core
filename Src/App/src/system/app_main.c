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

#include "mainFS.h"
#include "taskInit.h"
#include "app/system/taskHousekeeping.h"
#include "app/system/cmdAPP.h"
#include "board.h"
#include "bsp_uart.h"
#include "printf.h"

#include "log_utils.h"
#include "osThread.h"
static char *tag = "app_main";

/**
 * App specific initialization routines
 * This function is called by taskInit
 *
 * @param params taskInit params
 */
void initAppHook(void *params)
{
    /** Include app commands */
    cmd_app_init();

    /** Initialize custom CSP interfaces */
#if defined(SCH_OS_LINUX) && (SCH_COMM_ENABLE)
    csp_add_zmq_iface(SCH_COMM_NODE);
#endif

    /** Init app tasks */
    int t_ok = osCreateTask(taskHousekeeping, "housekeeping", 1024, NULL, 2, NULL);
    if(t_ok != 0) LOGE("simple-app", "Task housekeeping not created!");
}

int app_main(void)
{
    /** Call framework main, shouldn't return */
	volatile uint32_t i;
	bsp_uart_console_init();
//	while (1)
//	{
//		printf("Hello World \n");
//
//		for (i=0;i<1000000;i++);
//
//	}
    suchai_main();
}
