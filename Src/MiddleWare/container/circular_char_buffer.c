/*
 * circular_char_buffer.c
 *
 *  Created on: Jun 10, 2025
 *      Author: Admin
 */


#include "circular_char_buffer.h"
#include <string.h>
#include "DBC_assert.h"
#include "error_codes.h"


/* Khởi tạo bộ đệm */
uint32_t circular_char_buffer_init(circular_char_buffer_t * const me, uint8_t *static_buffer,  uint32_t max_items) {
    if (me == NULL || static_buffer == NULL || max_items == 0 ) {
        return ERROR_INVALID_PARAM;
    }

    me->buffer = static_buffer;
    me->max_items = max_items;
    me->head = 0;
    me->tail = 0;
    me->count = 0;

    return ERROR_OK;
}

/* Đưa một phần tử vào bộ đệm */
uint32_t circular_char_buffer_push(circular_char_buffer_t * const me, uint8_t const item) {

    uint32_t result ;
	if (me == NULL ) {
        result = ERROR_INVALID_PARAM;
    }
    else if (circular_char_buffer_is_full(me)) {
        result = ERROR_BUFFER_FULL;
    }
	else
	{
		/* Tính vị trí trong bộ đệm */
		me->buffer[me->head] = item;
        /* Cập nhật head và count */
		me->head = (me->head + 1) % me->max_items;
		me->count++;
		result = ERROR_OK;

	}
    return result;
}

/* Lấy một phần tử ra khỏi bộ đệm */
uint32_t circular_char_buffer_pop(circular_char_buffer_t * const me, uint8_t * const item) {
    uint32_t result ;
	if (me == NULL || item == NULL ) {
	    result = ERROR_INVALID_PARAM;
    }
    else if (circular_char_buffer_is_empty(me)) {
        result = ERROR_BUFFER_EMPTY;
    }
	else
	{

		*item = me->buffer[me->tail];
		/* Cập nhật tail và count */
		me->tail = (me->tail + 1) % me->max_items;
		me->count--;

		result = ERROR_OK;
	}
    return result;
}

/* Kiểm tra bộ đệm rỗng */
bool circular_char_buffer_is_empty(circular_char_buffer_t * const me) {
    if (me == NULL) {
        return true;
    }
    return me->count == 0;
}

/* Kiểm tra bộ đệm đầy */
bool circular_char_buffer_is_full(circular_char_buffer_t * const me) {
    if (me == NULL) {
        return true;
    }
    return me->count == me->max_items;
}
uint32_t circular_char_buffer_get_free_space(circular_char_buffer_t const * const me)
{ 
    if (me == NULL) {
        return 0; // Return 0 if the buffer is not initialized
    }
    // Calculate the number of free bytes in the circular buffer
 return me->max_items - me->count; 
}
