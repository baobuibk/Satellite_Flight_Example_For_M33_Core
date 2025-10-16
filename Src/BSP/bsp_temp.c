/*
 * bsp_temp.c
 *
 *  Created on: Oct 15, 2025
 *      Author: Admin
 */
#include "stdint.h"
#include "bsp_temp.h"
#include "ad4114.h"
#include "spi_io.h"
#include "do.h"
#include "ntc.h"

extern SPI_Io_t spi1;
extern do_t 	adc0_cs;
extern do_t 	adc1_cs;
ad4114_t adcDev0 = {
		.spi = &spi1,
		.cs  = &adc0_cs
};
ad4114_t adcDev1 = {
		.spi = &spi1,
		.cs  = &adc1_cs
};
#define NTC_CHANNEL_NUM	8

static  uint32_t adc0Result[16] = {0};
static  uint32_t adc1Result[16] = {0};


int32_t	NTC_temperature[NTC_CHANNEL_NUM] = {0};


uint32_t bsp_adc_init()
{
	uint32_t ret;
	ret =  ad4114_init(&adcDev0, &spi1, &adc0_cs);
	ret +=  ad4114_init(&adcDev1, &spi1, &adc0_cs);
}

uint32_t bsp_adc0_update()
{
	uint16_t out_mask = 0;
	uint32_t ret;
    ret = ad4114_read_all(&adcDev0, 50000u, &out_mask, adc0Result);
    if (!ret)
    {
    	for (uint32_t i = 4; i < 16; i++)	NTC_temperature[i - 4] = ntc_convert(adc0Result[i]);
    }
    return ret;
}
/*
 * get value from system variable
 */
int32_t bsp_temp_get(uint32_t NTCIndex)
{
	return NTC_temperature[NTCIndex];
}
