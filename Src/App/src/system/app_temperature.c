/*
 * app_temperature.c
 *
 *  Created on: Oct 14, 2025
 *      Author: Admin
 */
#include "repoData.h"
#include "config.h"
#include "bsp_temp.h"
#include "bsp_heater.h"
/*
 * using heater to keep temperature over 0 Celcius
 */
void taskTemperatureProfile0(void *param)
{
	uint32_t	pri_NTC;
	uint32_t	sec_NTC;
	uint32_t	heaters;
	int32_t		setpoint;
	int32_t		pri_temperature;	//255 = 25.5 Celcius
	int32_t		sec_temperature;


	while (1)
	{
		pri_NTC = (uint32_t)dat_get_system_var(conf_temp_profile0_pri_NTC);
		sec_NTC = (uint32_t)dat_get_system_var(conf_temp_profile0_pri_NTC);
		heaters = (uint32_t)dat_get_system_var(conf_temp_profile0_heater);
		setpoint = dat_get_system_var(conf_temp_profile0_setpoint);

		if (pri_NTC <= 7)
		{
			pri_temperature = bsp_temp_get(pri_NTC);
			if (sec_NTC <= 7) sec_temperature = bsp_temp_get(sec_NTC);
			else sec_temperature = pri_temperature;
		}
		if ((pri_temperature > (sec_temperature + TEMPERATURE_DELTA)) || (pri_temperature < (sec_temperature - TEMPERATURE_DELTA)))
		{
			bsp_heater_list_turnoff(heaters);	//error, turn off all heaters in the list, (0x03 mean heater 0,1)
		}
		else if (pri_temperature >= setpoint)
		{
			bsp_heater_list_turnoff(heaters);	//error, turn off all heaters in the list, (0x03 mean heater 0,1)
		}
		else
		{
			bsp_heater_list_turnon(heaters, conf_temp_profile0_duty);	//error, turn off all heaters in the list, (0x03 mean heater 0,1)
		}
	}
}


void taskTemperatureProfile2(void *param)
{

}

void taskTemperatureProfile3(void *param)
{

}
