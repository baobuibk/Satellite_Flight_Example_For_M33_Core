/*
 * board.c
 *
 *  Created on: Oct 16, 2025
 *      Author: Admin
 */


#include "i2c_io.h"
#include "spi_io.h"
#include "do.h"

i2c_io_t i2c7 = {
		.ui32I2cPort = 7
};

SPI_Io_t spi1 = {
		.ui32SpiPort = 1
};
do_t 	adc0_cs = {
	.port = 4, //GPIO4
	.pin = 16
};

do_t 	adc1_cs = {
	.port = 4, //GPIO4
	.pin = 20
};

void board_init()
{
	spi_io_init(&spi1);
	i2c_io_init(&i2c7);
}
