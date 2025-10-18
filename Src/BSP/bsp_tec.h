/*
 * bsp_spi.h
 *
 *  Created on: Oct 16, 2025
 *      Author: HTSANG
 */

#ifndef BSP_BSP_TEC_H_
#define BSP_BSP_TEC_H_

#include "spi_io.h"
#include "do.h"
#include "lt8722.h"
#include "error_codes.h"

uint8_t bsp_tec_init(uint8_t channel);
uint8_t bsp_tec_ctrl(uint8_t channel, uint8_t state);
uint8_t bsp_tec_set_voltage(uint8_t channel, int64_t volt);
uint8_t bsp_tec_set_direction(uint8_t channel, tec_dir_t dir);
uint8_t bsp_tec_status(uint8_t channel, uint8_t* status);





#endif /* BSP_BSP_TEC_H_ */
