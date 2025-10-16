/*
 * bsp_expander.c
 *
 *  Created on: Oct 16, 2025
 *      Author: Admin
 */

#include "board.h"
#include "bsp_expander.h"
#include "bsp_power.h"
#include "osDelay.h"
#include "tca6416.h"
#include "error_codes.h"

extern i2c_io_t i2c7;

tca6416a_t expander0 = {
		.bus = &i2c7,
		.addr7 = 0x21,	//ARRR = 1
};

tca6416a_t expander1 = {
		.bus = &i2c7,
		.addr7 = 0x20,	//ARRR = 1
};




uint32_t bsp_expander_init(void)
{
	uint32_t rc = 0;
	bsp_power_IO_ctrl(POWER_ON);
	osDelay(10); //wait for the output tobe stable

	rc = tca6416a_init(&expander0, &i2c7,0x21);
	rc += tca6416a_init(&expander1, &i2c7,0x20);
	rc += tca6416a_write_outputs(&expander0, 0); //make all output of u11 zero
	rc += tca6416a_write_outputs(&expander1, 0xE000); //RAM_SPI_nCS, PWM_I2C_nOE, HD4_I2C_EN are set, others are cleared
	rc += tca6416a_write_modes(&expander0, 0); //make all output
	rc += tca6416a_write_modes(&expander1, 0);

}

uint32_t bsp_expander_ctrl(uint32_t index, uint32_t status)
{
	uint32_t rc = 1;
	if (index < 16)		//expander 0
	{
		rc = tca6416a_pin_write(&expander0,index,status);
	}
	else if (index < 31)
	{
		rc = tca6416a_pin_write(&expander1,index - 16,status);
	}
	return rc;
}
