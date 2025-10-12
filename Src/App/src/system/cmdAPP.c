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

#include "app/system/cmdAPP.h"

static const char* tag = "cmdAPP";

void cmd_app_init(void)
{
    cmd_add("obc_get_sensors", obc_get_sensors, "", 0);
    cmd_add("obc_update_status", obc_update_status, "", 0);
}

cmd_result_t obc_get_sensors(cmd_args_t* params)
{
#ifdef SCH_OS_LINUX
    int curr_time =  (int)time(NULL);
    float systemp, millideg;
    FILE *thermal;
    int n;

    LOGD(tag, "Reading obc data in Linux \n timestamp: %d", curr_time);
    // Reading temp
    thermal = fopen("/sys/class/thermal/thermal_zone0/temp","r");
    if(thermal == NULL)
    {
        LOGW(tag, "Could not read temperatures!");
        return CMD_ERROR;
    }
    n = fscanf(thermal,"%f",&millideg);
    fclose(thermal);
    if(n!= 1)
        return CMD_ERROR;
    // Save temp
    systemp = millideg / 1000;
    int index_temp = dat_get_system_var(data_map[temp_sensors].sys_index);
    struct temp_data data_temp = {index_temp, curr_time, systemp};
    LOGR(tag, "Temp1: %.1f", data_temp.obc_temp_1);
    dat_add_payload_sample(&data_temp, temp_sensors);
    return CMD_OK;
#else
    return CMD_ERROR;
#endif
}

cmd_result_t obc_update_status(cmd_args_t* params)
{
#ifdef SCH_OS_LINUX
    int curr_time =  (int)time(NULL);
    float systemp, millideg;
    FILE *thermal;
    int n;

    LOGD(tag, "Reading obc data in Linux \n timestamp: %d", curr_time);
    // Reading temp
    thermal = fopen("/sys/class/thermal/thermal_zone0/temp","r");
    if(thermal == NULL)
    {
        LOGW(tag, "Could not read temperatures!");
        return CMD_ERROR;
    }
    n = fscanf(thermal,"%f",&millideg);
    fclose(thermal);
    if(n!= 1)
        return CMD_ERROR;

    // Save temp
    systemp = millideg / 1000;
    /* Set sensors status variables (fix type) */
    value32_t temp_1;
    temp_1.f = systemp;
    dat_set_status_var(dat_obc_temp_1, temp_1);

    LOGR(tag, "Temp1: %.1f", temp_1.f);
    return CMD_OK;
#else
    return CMD_ERROR;
#endif
}
