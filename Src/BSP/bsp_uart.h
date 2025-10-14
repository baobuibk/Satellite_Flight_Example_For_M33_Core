/*
 * bsp_uart.h
 *
 *  Created on: Oct 4, 2025
 *      Author: Admin
 */

#ifndef BSP_BSP_UART_H_
#define BSP_BSP_UART_H_
#include "stddef.h"
void bsp_uart_console_init(void);
uint32_t _getchar(uint8_t * character);
int csp_uart_tx_frame(void *driver, const uint8_t *data, size_t len);
uint32_t csp_getchar(uint8_t * character);

#endif /* BSP_BSP_UART_H_ */
