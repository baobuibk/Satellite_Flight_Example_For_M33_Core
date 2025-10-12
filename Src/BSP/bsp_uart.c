/*
 * bsp_uart.c
 *
 *  Created on: Oct 4, 2025
 *      Author: Admin
 */
#include "board.h"
#include "bsp_uart.h"
#include "uart_stdio.h"
#include "error_codes.h"

uint8_t rx_buffer_data[CONSOLE_UART_RX_BUFFER_SIZE];
uint8_t tx_buffer_data[CONSOLE_UART_TX_BUFFER_SIZE];
static circular_char_buffer_t   uartConsoleTxBuffer = {
		tx_buffer_data,
		CONSOLE_UART_TX_BUFFER_SIZE - 1,
		0,
		0,
		0
};
static circular_char_buffer_t   uartConsoleRxBuffer = {
		rx_buffer_data,
		CONSOLE_UART_RX_BUFFER_SIZE - 1,
		0,
		0,
		0
};;



UART_stdio_t uartConsole = {
		1,
		&uartConsoleRxBuffer,
		&uartConsoleTxBuffer,
		false,
		false
};

void bsp_uart_console_init()
{

	uart_stdio_active(&uartConsole, CONSOLE_UART_INT_PRI);

	uart_stdio_printf(&uartConsole, "hello world\n");
}

//redirect for printf
void _putchar(char character)
{
	uart_stdio_write_char(&uartConsole, character);
}

uint32_t _getchar(uint8_t * character)
{
	return uart_stdio_read_char(&uartConsole, character);
}

void     USART1_IRQHandler(void)
{
	uart_stdio_rx_callback(&uartConsole);
	uart_stdio_tx_callback(&uartConsole);
}


