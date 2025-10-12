/*
 * powerCommand.c
 *
 *  Created on: Oct 10, 2025
 *      Author: Admin
 */
#include "powerCommand.h"
#include "printf.h"
#include "error_codes.h"
#include "log_utils.h"
#include "storage.h"
#include "repoCommand.h"
#include "repoData.h"

static const char *tag = "power";


//cmd_result_t cmd_set_logger(int argc, char *argv[])
//{
//
//}


cmd_result_t power_heater_control(uint32_t argc, uint8_t *argv[])
{
    value32_t v;

    if((argc != 2) )
        return CMD_SYNTAX_ERROR;

    if (!strcmp((char *)argv[1],"on"))
		{
    	//power on heater
    	v.i = POWER_ON;
    	LOGI(tag,"heater power on");
		}
    else if (!strcmp((char *)argv[1],"off"))
		{
    	//power off heater
    	v.i = POWER_OFF;
    	LOGI(tag,"heater power off");
		}
    else { //wrong argument
    	LOGI(tag,"wrong argument");
    	return CMD_SYNTAX_ERROR;
    }
    dat_set_status_var(data_exp_12V_heater_status,v);
    return CMD_OK;

}
cmd_result_t power_heater_status(uint32_t argc, uint8_t *argv[])
{
	value32_t v;
    if((argc != 1) )
        return CMD_SYNTAX_ERROR;
    v = dat_get_status_var(data_exp_12V_heater_status);
    if (POWER_OFF == v.i ) { LOGI(tag,"12V_heater off");}
    else LOGI(tag,"12V_heater on");
    return CMD_OK;

}
