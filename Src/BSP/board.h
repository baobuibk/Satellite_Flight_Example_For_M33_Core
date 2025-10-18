/*
 * board.h
 *
 *  Created on: Oct 4, 2025
 *      Author: Admin
 */

#ifndef BSP_BOARD_H_
#define BSP_BOARD_H_

#include "stm32f7xx.h"
#include "i2c_io.h"
#include "spi_io.h"
#include "do.h"
#include "adg1414.h"
#include "mcp4902.h"



#define STM32F7_DISCO

//#define EXP_BOARD

#if defined(EXP_BOARD)
#define CLI_UART						USART6
#define LWL_UART						USART3
#elif defined(STM32F7_DISCO)
#define CLI_UART						USART1
#define KISS_UART						USART6
#endif

#define 	CONSOLE_UART_INT_PRI		14

#define CONSOLE_UART_RX_BUFFER_SIZE		1024*10
#define CONSOLE_UART_TX_BUFFER_SIZE		1024*10


#define 	KISS_UART_INT_PRI			14

#define UART_KISS_RX_BUFFER_SIZE		1024
#define UART_KISS_TX_BUFFER_SIZE		1024


/* POWER */
extern do_t pwr_5v_ena;


/* TEC */
extern SPI_Io_t tec_spi;


/* LASER */
extern SPI_Io_t laser_spi;
extern adg1414_dev_t laser_int_dev;
extern mcp4902_dev_t laser_dac_dev;

/* PHOTO */
extern SPI_Io_t photo_spi;
extern adg1414_dev_t photo_sw_dev;

void board_init(void);

#endif /* BSP_BOARD_H_ */
