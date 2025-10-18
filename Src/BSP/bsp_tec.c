/*
 * bsp_spi.c
 *
 *  Created on: Oct 16, 2025
 *      Author: HTSANG
 */


#include "bsp_tec.h"
#include "board.h"

static do_t tec_0_cs = {
	.port = 5,
	.pin = 1
};

static do_t tec_0_en = {
	.port = 5,
	.pin = 6
};

static do_t tec_0_swen = {
	.port = 5,
	.pin = 5
};

static do_t tec_1_cs = {
	.port = 5,
	.pin = 0
};

static do_t tec_1_en = {
	.port = 3,
	.pin = 13
};

static do_t tec_1_swen = {
	.port = 5,
	.pin = 4
};

static do_t tec_2_cs = {
	.port = 2,
	.pin = 8
};

static do_t tec_2_en = {
	.port = 3,
	.pin = 14
};

static do_t tec_2_swen = {
	.port = 5,
	.pin = 3
};

static do_t tec_3_cs = {
	.port = 2,
	.pin = 9
};

static do_t tec_3_en = {
	.port = 3,
	.pin = 15
};

static do_t tec_3_swen = {
	.port = 5,
	.pin = 2
};

lt8722_dev_t tec0 = {
	.hspi = &tec_spi,
	.spi_cs_pin = &tec_0_cs,
	.en_pin = &tec_0_en,
	.sw_pin = &tec_0_swen,
	.status = 0
};

lt8722_dev_t tec1 = {
	.hspi = &tec_spi,
	.spi_cs_pin = &tec_1_cs,
	.en_pin = &tec_1_en,
	.sw_pin = &tec_1_swen,
	.status = 0
};

lt8722_dev_t tec2 = {
	.hspi = &tec_spi,
	.spi_cs_pin = &tec_2_cs,
	.en_pin = &tec_2_en,
	.sw_pin = &tec_2_swen,
	.status = 0
};

lt8722_dev_t tec3 = {
	.hspi = &tec_spi,
	.spi_cs_pin = &tec_3_cs,
	.en_pin = &tec_3_en,
	.sw_pin = &tec_3_swen,
	.status = 0
};


uint8_t bsp_tec_init(uint8_t channel) {
	uint8_t ret = ERROR_OK;
	switch(channel) {
	case 0:
		ret = lt8722_init(&tec0);
		break;
	case 1:
		ret = lt8722_init(&tec1);
		break;
	case 2:
		ret = lt8722_init(&tec2);
		break;
	case 3:
		ret = lt8722_init(&tec3);
		break;
	}
	return ret;
}

uint8_t bsp_tec_ctrl(uint8_t channel, uint8_t state) {
	uint8_t ret = ERROR_OK;
	int64_t volt = 0;
	tec_dir_t dir = 0;
	switch(channel) {
	case 0:
		dir = LT8722_READ_BIT(tec0.status, TEC_DIR_POS);
		volt = tec0.voltage;
		if (state) {
			ret = lt8722_set_output_voltage_channel(&tec0, dir, volt);
			lt8722_set_swen_req(&tec0, LT8722_SWEN_REQ_ENABLED);
		}
		else {
			lt8722_set_swen_req(&tec0, LT8722_SWEN_REQ_DISABLED);
		}
		break;
	case 1:
		dir = LT8722_READ_BIT(tec1.status, TEC_DIR_POS);
		volt = tec1.voltage;
		if (state) {
			ret = lt8722_set_output_voltage_channel(&tec1, dir, volt);
			lt8722_set_swen_req(&tec1, LT8722_SWEN_REQ_ENABLED);
		}
		else {
			lt8722_set_swen_req(&tec1, LT8722_SWEN_REQ_DISABLED);
		}
		break;
	case 2:
		dir = LT8722_READ_BIT(tec2.status, TEC_DIR_POS);
		volt = tec2.voltage;
		if (state) {
			ret = lt8722_set_output_voltage_channel(&tec2, dir, volt);
			lt8722_set_swen_req(&tec2, LT8722_SWEN_REQ_ENABLED);
		}
		else {
			lt8722_set_swen_req(&tec2, LT8722_SWEN_REQ_DISABLED);
		}
		break;
	case 3:
		dir = LT8722_READ_BIT(tec3.status, TEC_DIR_POS);
		volt = tec3.voltage;
		if (state) {
			ret = lt8722_set_output_voltage_channel(&tec3, dir, volt);
			lt8722_set_swen_req(&tec3, LT8722_SWEN_REQ_ENABLED);
		}
		else {
			lt8722_set_swen_req(&tec3, LT8722_SWEN_REQ_DISABLED);
		}
		break;
	}
	return ret;
}

uint8_t bsp_tec_set_voltage(uint8_t channel, int64_t volt) {
	uint8_t ret = ERROR_OK;
	switch(channel) {
	case 0:
		tec0.voltage = volt * 10000000;
		break;
	case 1:
		tec1.voltage = volt * 10000000;
		break;
	case 2:
		tec2.voltage = volt * 10000000;
		break;
	case 3:
		tec3.voltage = volt * 10000000;
		break;
	}
	return ret;
}

uint8_t bsp_tec_set_direction(uint8_t channel, tec_dir_t dir) {
	uint8_t ret = ERROR_OK;
	switch(channel) {
	case 0:
		LT8722_WRITE_BIT(tec0.status, TEC_DIR_POS, dir);
		break;
	case 1:
		LT8722_WRITE_BIT(tec1.status, TEC_DIR_POS, dir);
		break;
	case 2:
		LT8722_WRITE_BIT(tec2.status, TEC_DIR_POS, dir);
		break;
	case 3:
		LT8722_WRITE_BIT(tec3.status, TEC_DIR_POS, dir);
		break;
	default:
		ret = ERROR_INVALID_PARAM;
		break;
	}
	return ret;
}

uint8_t bsp_tec_status(uint8_t channel, uint8_t* status) {
	uint8_t ret = ERROR_OK;
	switch(channel) {
	case 0:
		*status = tec0.status;
		break;
	case 1:
		*status = tec1.status;
		break;
	case 2:
		*status = tec2.status;
		break;
	case 3:
		*status = tec3.status;
		break;
	default:
		ret = ERROR_INVALID_PARAM;
		break;
	}
	return ret;
}
