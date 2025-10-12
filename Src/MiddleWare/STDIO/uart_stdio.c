#include "uart_stdio.h"
#include <stdio.h>
#include <string.h>
#include "error_codes.h"
#include "uart.h"

#include "osCritical.h"
// Kích thước bộ đệm tạm cho printf
#define PRINTF_BUFFER_SIZE 128

// Khởi tạo UART_stdio_t
void uart_stdio_init(UART_stdio_t* me, uint32_t huart, circular_char_buffer_t* rx_buffer, circular_char_buffer_t* tx_buffer) {
    me->huart = huart;
    me->rx_buffer = rx_buffer;
    me->tx_buffer = tx_buffer;
    me->tx_busy = false;
    me->is_active = false; // UART chưa được kích hoạt
}

// Kích hoạt UART
void uart_stdio_active(UART_stdio_t* me, uint32_t ui32IntPri) {
    if (!me->is_active) {
        // Bật UART
    	uart_active(me->huart, ui32IntPri);
        me->is_active = true;
    }
}

// Hủy kích hoạt UART
void uart_stdio_deactive(UART_stdio_t* me) {
    if (me->is_active) {
        // Tắt ngắt TXE và RXNE
    	uart_deactive(me->huart);
        me->tx_busy = false; // Đặt lại trạng thái truyền
        me->is_active = false;
    }
}

// Kiểm tra trạng thái hoạt động
bool uart_stdio_is_active(UART_stdio_t* me) {
    return me->is_active;
}

// Đọc dữ liệu từ bộ đệm nhận
bool uart_stdio_read(UART_stdio_t* me, uint8_t* buffer, uint32_t* rec_num) {
    if (!me->is_active) {
        *rec_num = 0;
        return false;
    }

    uint32_t count = 0;
    uint32_t result;

    while (count < *rec_num) {
        result = circular_char_buffer_pop(me->rx_buffer, &buffer[count]);
        if (result) {
            break;
        }
        count++;
    }
    *rec_num = count;
    return count > 0;
}

// Ghi dữ liệu vào bộ đệm phát
uint32_t uart_stdio_write(UART_stdio_t* me, const uint8_t * buffer, uint32_t num_data) {
	uint8_t data;
    uint32_t count = 0;
    uint32_t result = ERROR_OK;
	if (!me->is_active) {
        return ERROR_NOT_READY;
    }
    // Nếu không có truyền đang diễn ra, kích hoạt truyền
//	 os_enterCritical();
	__asm volatile ("cpsid i");
    if (!me->tx_busy) {

        data = buffer[0];
        uart_send_byte_async(me->huart, data);
        uart_enable_interrupt(me->huart, UART_INT_TXE);
        count ++;
    }
    // Thêm dữ liệu  vào bộ đệm
    while (count < num_data ) {
        result = circular_char_buffer_push(me->tx_buffer, buffer[count]);
        if (result) {
            break;
        }
        count++;
    }
//    os_exitCritical();
    __asm volatile ("cpsie i");
    return result;
}


// Ghi dữ liệu vào bộ đệm phát
uint32_t uart_stdio_write_char(UART_stdio_t* me, const uint8_t character) {
uint32_t result = ERROR_OK;
	if (!me->is_active) {
        return ERROR_NOT_READY;
    }
    // Nếu không có truyền đang diễn ra, kích hoạt truyền
	os_enterCritical();
    if (!me->tx_busy) {

        uart_send_byte_async(me->huart, character);
        me->tx_busy = true;
        uart_enable_interrupt(me->huart, UART_INT_TXE); // Bật ngắt TXE
    }
    else
    // Thêm dữ liệu  vào bộ đệm
     {
        result = circular_char_buffer_push(me->tx_buffer, character);
        if (result) {
            result = ERROR_OUT_OF_MEMORY;
        }
    }
   os_exitCritical();
return result;
}

// đọc dữ liệu từ rx buffer
uint32_t uart_stdio_read_char(UART_stdio_t* me, uint8_t * character) {
uint32_t result = ERROR_OK;
	if (!me->is_active) {
        return ERROR_NOT_READY;
    }
    // Nếu không có truyền đang diễn ra, kích hoạt truyền
	os_enterCritical();
    result = circular_char_buffer_pop(me->rx_buffer, character);
    os_exitCritical();
return result;
}

// In chuỗi định dạng qua UART
uint32_t uart_stdio_printf(UART_stdio_t* me, const char * format, ...) {
    if (!me->is_active) {
        return 0;
    }

    char temp_buffer[PRINTF_BUFFER_SIZE];
    va_list args;

    // Khởi tạo danh sách tham số biến đổi
    va_start(args, format);

    // Định dạng chuỗi vào bộ đệm tạm
    int len = vsnprintf(temp_buffer, PRINTF_BUFFER_SIZE, format, args);

    // Kết thúc danh sách tham số
    va_end(args);

    // Kiểm tra độ dài hợp lệ
    if (len < 0 || len >= PRINTF_BUFFER_SIZE) {
        return 0;
    }

    // Gửi chuỗi đã định dạng qua UART
    return uart_stdio_write(me, (uint8_t *)temp_buffer, (uint32_t)len);
}

// Callback xử lý ngắt nhận
void uart_stdio_rx_callback(UART_stdio_t* me) {
    if (uart_is_active_flag(me->huart, UART_INT_RXNE) && me->is_active) {
        uint8_t received_data = uart_receive_byte(me->huart);
        circular_char_buffer_push(me->rx_buffer, received_data);
    }
//    LL_USART_ClearFlag_ORE(me->uart_x);
    if (uart_is_active_flag(me->huart, UART_INT_ORE))
    	uart_clear_flag(me->huart, UART_INT_ORE);
}

// Callback xử lý ngắt phát
uint32_t uart_stdio_tx_callback(UART_stdio_t* me) {
    uint8_t data;
    uint32_t result = ERROR_OK;

    if (uart_is_active_flag(me->huart, UART_INT_TXE) && me->is_active) {

        result = circular_char_buffer_pop(me->tx_buffer, &data);
        if (!result) {
            // Tiếp tục truyền byte tiếp theo
        	uart_send_byte_async(me->huart, data);
        } else {
            // Không còn dữ liệu, tắt ngắt TXE và đặt trạng thái không bận
        	uart_disable_interrupt(me->huart,UART_INT_TXE);
            me->tx_busy = false;
        }
    }
    return result;
}
