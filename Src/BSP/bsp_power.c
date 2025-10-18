/*
 * bsp_power.c
 *
 *  Created on: Oct 15, 2025
 *      Author: Admin
 */
#include "stdint.h"
#include "error_codes.h"
#include "tca6416.h"
#include "board.h"
#include "do.h"

/*
 * status is the enum: enum {
 *	POWER_ON = 0,
 *	POWER_OFF
* };
 */
void bsp_power_5v_enable(void)
{
	do_set(&pwr_5v_ena);
}

void bsp_power_5v_disable(void)
{
	do_reset(&pwr_5v_ena);
}

//do_t sck = {
//		.port = 6,
//		.pin = 7
//};
//
//do_t miso = {
//		.port = 6,
//		.pin = 8
//};
//
//do_t mosi = {
//		.port = 6,
//		.pin = 9
//};

