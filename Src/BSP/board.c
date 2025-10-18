/*
 * board.c
 *
 *  Created on: Oct 16, 2025
 *      Author: Admin
 */

#include "board.h"
#include "bsp_laser.h"

/* POWER */
do_t pwr_5v_ena = {
		.port = 4,
		.pin = 4
};

/* TEC */
SPI_Io_t tec_spi = {
		.ui32SpiPort = 3,
};

/* LASER */
SPI_Io_t laser_spi = {
	.ui32SpiPort = 4,
};

do_t laser_int_sw_cs = {
		.port = 5,
		.pin = 10
};

do_t laser_ext_sw_cs = {
		.port = 5,
		.pin = 15
};

do_t laser_dac_cs = {
		.port = 2,
		.pin = 2
};

do_t laser_dac_latch = {
		.port = 2,
		.pin = 12
};

adg1414_dev_t laser_int_dev = {
		.spi = &laser_spi,
		.cs  = { .port = 5, .pin = 10, .bStatus = false },
		.num_of_sw = 3
};


mcp4902_dev_t laser_dac_dev = {
		.spi = &laser_spi,
		.cs = { .port = 2, .pin = 2, .bStatus = false },
		.latch = { .port = 2, .pin = 12, .bStatus = false },
};

/* PHOTO */
SPI_Io_t photo_spi = {
		.ui32SpiPort = 2,
};

do_t photo_sw_cs = {
		.port = 4,
		.pin = 8,
		.bStatus = false
};

do_t photo_adc_cs = {
		.port = 4,
		.pin = 9,
		.bStatus = false
};

adg1414_dev_t photo_sw_dev = {
		.spi = &photo_spi,
		.cs = { .port = 4, .pin = 8, .bStatus = false },
		.num_of_sw = 3
};

void board_init(void)
{
	spi_io_init(&tec_spi);
	spi_io_init(&laser_spi);
	spi_io_init(&photo_spi);
//	bsp_laser_init();
//	bsp_photo_init();
}
