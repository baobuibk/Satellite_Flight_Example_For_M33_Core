/*
 * board.h
 *
 *  Created on: Oct 4, 2025
 *      Author: Admin
 */

#ifndef BSP_BOARD_H_
#define BSP_BOARD_H_

#include "stm32f7xx.h"

#define STM32F7_DISCO

//#define EXP_BOARD

#if defined(EXP_BOARD)
#define CLI_UART						USART6
#define LWL_UART						USART3
#elif defined(STM32F7_DISCO)
#define CLI_UART						USART1
#endif

#define 	CONSOLE_UART_INT_PRI		14

#define CONSOLE_UART_RX_BUFFER_SIZE		1024
#define CONSOLE_UART_TX_BUFFER_SIZE		1024

#endif /* BSP_BOARD_H_ */
