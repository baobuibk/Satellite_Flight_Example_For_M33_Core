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
#include "printf.h"
const char *tag = "fs_main";

int suchai_main(void)
{
    /* On reset */
    on_reset();
    printf("\r\n\r\n--------- FLIGHT SOFTWARE START ---------\r\n");
    printf("\t Version: %s\r\n", SCH_SW_VERSION);
    printf("\t Device : %d (%s)\r\n", SCH_DEVICE_ID, SCH_NAME);
    printf("-----------------------------------------\r\n\r\n");

    /* Init software subsystems */
    log_init(SCH_LOG_LEVEL, 0);      // Logging system
    osSemaphoreCreate(&repo_cmd_sem);
    osSemaphoreCreate(&repo_data_sem);

    /* Initializing shared Queues */
    dispatcher_queue = osQueueCreate(SCH_CMD_QUEUE_LEN,sizeof(cmd_t));	// static allocation for command
    executer_stat_queue = osQueueCreate(1,sizeof(int));
    executer_cmd_queue = osQueueCreate(1,sizeof(cmd_t));

    if(dispatcher_queue == 0) LOGE(tag, "Error creating dispatcher queue");
    if(executer_stat_queue == 0) LOGE(tag, "Error creating executer stat queue");
    if(executer_cmd_queue == 0) LOGE(tag, "Error creating executer cmd queue");

    os_thread threads_id[4];

    LOGI(tag, "Creating basic tasks...");

//    osCreateTask(taskConsole, "console", SCH_TASK_CON_STACK, NULL, 3, NULL);
    /* Crating system task (the others are created inside taskInit) */
    int t_inv_ok = osCreateTask(taskDispatcher,"invoker", SCH_TASK_CON_STACK, NULL, 3, NULL);
 //   int t_exe_ok = osCreateTask(taskExecuter, "receiver", SCH_TASK_EXE_STACK, NULL, 4, &threads_id[1]);
//    int t_wdt_ok = osCreateTask(taskWatchdog, "watchdog", SCH_TASK_WDT_STACK, NULL, 2, &threads_id[2]);
      int t_ini_ok = osCreateTask(taskInit, "init", SCH_TASK_INI_STACK, NULL, 2, &threads_id[3]);

    /* Check if the task were created */
 //   if(t_inv_ok != 0) LOGE(tag, "Task invoker not created!");
//    if(t_exe_ok != 0) LOGE(tag, "Task receiver not created!");
//    if(t_wdt_ok != 0) LOGE(tag, "Task watchdog not created!");
 //   if(t_ini_ok != 0) LOGE(tag, "Task init not created!");

    /* Start the scheduler. Should never return */
    osScheduler(threads_id, 4);
    return 0;
}
