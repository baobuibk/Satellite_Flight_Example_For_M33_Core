/*
 * Copyright 2025 SUCHAI Flight Software v2 project and contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


#ifndef REPO_DATA_EXP_SCHEMA_H
#define REPO_DATA_EXP_SCHEMA_H

#include "storage.h"
#include "log_utils.h"

///**
// * Struct for storing a single timed command, set to execute in the future.
// */
//typedef struct __attribute__((packed)) fp_entry {
//    int unixtime;               ///< Unix-time, sets when the command should next execute
//    char* cmd;                  ///< Command to execute
//    char* args;                 ///< Command's arguments
//    int executions;             ///< Amount of times the command will be executed per periodic cycle
//    int periodical;             ///< Period of time between executions
//} fp_entry_t;

/**
 * Enum constants for dynamically identifying system status fields at execution time.
 *
 * Also permits adding new status variables cheaply, by generalizing both the
 * dat_set_system_var and dat_get_system_var functions.
 *
 * The dat_status_last_address constant serves only for comparison when looping through all
 * system status values. For example:
 *
 * @code
 * for (dat_status_address_t i = 0; i < dat_status_last_address; i++)
 * {
 * // some code using i.
 * }
 * @endcode
 *
 * @see dat_status_t
 * @seealso dat_set_system_var
 * @seealso dat_get_system_var
 */
typedef enum dat_status_address_enum {
    /// OBC: On board computer related variables.
    dat_exp_opmode = 0,           ///< General operation mode
    dat_exp_last_reset,           ///< Last reset source
    dat_exp_hrs_alive,            ///< Hours since first boot
    dat_exp_hrs_wo_reset,         ///< Hours since last reset
    dat_exp_reset_counter,        ///< Number of reset since first boot
    dat_exp_sw_wdt,               ///< Software watchdog timer counter
    dat_exp_cmds,        ///< Total number of executed commands
    dat_exp_executed_cmds,        ///< Total number of executed commands
    dat_exp_failed_cmds,          ///< Total number of failed commands
    dat_exp_board_temp,               ///< Temperature value of the main board


    /// RTC: Rtc related variables
    dat_rtc_date_time,            ///< RTC current unix time

	// Experiment chamber variable
	//NTC temperature
	dat_exp_NTC0_temp,
	dat_exp_NTC1_temp,
	dat_exp_NTC2_temp,
	dat_exp_NTC3_temp,
	dat_exp_NTC4_temp,
	dat_exp_NTC5_temp,
	dat_exp_NTC6_temp,
	dat_exp_NTC7_temp,
	// TEC status
	data_exp_tec0_status,         //disabling, heating, cooling, error
	data_exp_tec0_voltage,
	data_exp_tec1_status,         //disabling, heating, cooling, error
	data_exp_tec1_voltage,
	data_exp_tec2_status,         //disabling, heating, cooling, error
	data_exp_tec2_voltage,
	data_exp_tec3_status,         //disabling, heating, cooling, error
	data_exp_tec3_voltage,

	//heater status
	data_exp_heater0_duty,			//0-100%
	data_exp_heater1_duty,
	data_exp_heater2_duty,
	data_exp_heater3_duty,
	data_exp_heater4_duty,
	data_exp_heater5_duty,
	data_exp_heater6_duty,
	data_exp_heater7_duty,
	//USB led
	data_exp_usb_led0_duty,
	data_exp_usb_led1_duty,
	//power status
	data_exp_12V_heater_status,
	data_exp_12V_heater_current,
	data_exp_12V_solenoid_status,
	data_exp_12V_solenoid_current,
	data_exp_5V_IO_status,
	data_exp_5V_IO_current,
	data_exp_5V_HD_status,
	data_exp_5V_HD_current,
	data_exp_5V_TEC_status,
	data_exp_5V_TEC_current,
	data_exp_5V_CAM_status,
	data_exp_5V_CAM_current,
	data_exp_12V_photo_status,
	data_exp_12V_photo_current,
	data_exp_12V_laser_status,
	data_exp_12V_laser_current,

	// HD driver
	data_exp_hd0_status,
	data_exp_hd1_status,
	data_exp_hd2_status,
    /// COM: Communications system variables.
    dat_com_count_tm,             ///< Number of Telemetries sent
    dat_com_count_tc,             ///< Number of received Telecommands
    dat_com_last_tc,              ///< Unix time of the last received Telecommand
    dat_status_last_address ,          ///< Dummy element, the amount of status variables

	//temperature control profile (keep temperature above 0)
	conf_temp_profile0_pri_NTC,			//position of NTC need to control (0-7), FF if no use of this profile
	conf_temp_profile0_sec_NTC,			//position of secondary NTC (0-7), FF if no need
	conf_temp_profile0_setpoint,			//setpoint for profile 0
	conf_temp_profile0_duty,
	conf_temp_profile0_heater,			//position of heaters to control
	//temperature control profile (keep temperature above 0)
	conf_temp_profile1_pri_NTC,			//position of NTC need to control (0-7), FF if no use of this profile
	conf_temp_profile1_sec_NTC,			//position of secondary NTC (0-7), FF if no need
	conf_temp_profile1_setpoint,			//setpoint for profile 1
	conf_temp_profile1_duty,
	conf_temp_profile1_heater,			//position of heaters to control
	//temperature control profile (keep temperature above 0)
	conf_temp_profile2_pri_NTC,			//position of NTC need to control (0-7), FF if no use of this profile
	conf_temp_profile2_sec_NTC,			//position of secondary NTC (0-7), FF if no need
	conf_temp_profile2_setpoint,			//setpoint for profile 2
	conf_temp_profile2_duty,
	conf_temp_profile2_heater,			//position of heaters to control
	//temperature control profile (keep temperature above 0)
	conf_temp_profile3_pri_NTC,			//position of NTC need to control (0-7), FF if no use of this profile
	conf_temp_profile3_sec_NTC,			//position of secondary NTC (0-7), FF if no need
	conf_temp_profile3_setpoint,			//setpoint for profile 0
	conf_temp_profile3_duty,
	conf_temp_profile3_heater,			//position of heaters to control


	//experiment temperature control profile (keep temperature above rampup/ramp down)
	//temperature control profile (keep temperature above 0)

	conf_exp_temp_profile0_pri_NTC,			//position of NTC need to control (0-7), FF if no use of this profile
	conf_exp_temp_profile0_sec_NTC,			//position of secondary NTC (0-7), FF if no need
	conf_exp_temp_profile0_heater,			//position of heaters to control
	conf_exp_temp_profile0_upper_setpoint,
	conf_exp_temp_profile0_lower_setpoint,

	conf_exp_temp_profile1_pri_NTC,			//position of NTC need to control (0-7), FF if no use of this profile
	conf_exp_temp_profile1_sec_NTC,			//position of secondary NTC (0-7), FF if no need
	conf_exp_temp_profile1_heater,			//position of heaters to control
	conf_exp_temp_profile1_upper_setpoint,
	conf_exp_temp_profile1_lower_setpoint,

	conf_photo_temp_profile_pri_NTC,			//position of NTC need to control (0-7), FF if no use of this profile
	conf_photo_temp_profile_sec_NTC,			//position of secondary NTC (0-7), FF if no need
	conf_photo_temp_profile_heater,			//position of heaters to control
	conf_photo_temp_profile_tec,			//position of heaters to control
	conf_photo_temp_profile_setpoint,


    /// FPL: Flight plan related variables
    //dat_experiment_plan_last,                 ///< Last executed experiment time (unix time)


    /// Memory: Current payload memory addresses
    //dat_drp_idx_temp,                 ///< Temperature data index

    /// Memory: Current send acknowledge data
    //dat_drp_ack_temp,             ///< Temperature data acknowledge

    /// Add a new status variables address here
    //dat_custom,                 ///< Variable description

    /// LAST ELEMENT: DO NOT EDIT
} dat_status_address_t;

///**
// * A 32 bit variable that can be interpreted as int, uint or float
// */
//typedef union value32_u{
//    int32_t i;
//    uint32_t u;
//    float f;
//} value32_t;

///< Define opeartion modes
#define DAT_EXP_OPMODE_NORMAL        (0) ///< Normal operation
#define DAT_EXP_OPMODE_WARN          (1) ///< Fail safe operation
#define DAT_EXP_OPMODE_FAIL          (2) ///< Generalized fail operation

///< Define is a variable is config or status
#define DAT_IS_CONFIG 0
#define DAT_IS_STATUS 1

/**
 * A system variable (status or config) with an address, name, type and value
 */
#define MAX_VAR_NAME 24

typedef struct __attribute__((packed)) dat_sys_var {
    uint16_t address;   ///< Variable address or index (in the data storage)
    char name[MAX_VAR_NAME];      ///< Variable name (max 24 chars)
    char type;          ///< Variable type (u: uint, i: int, f: float)
    int16_t status;      ///< Variable is status (1), is config (0), or uninitialized (-1)
    value32_t value;    ///< Variable default value
} dat_sys_var_t;

/**
 * A system variable (status or config) with an address, and value
 * A short version to be sent as telemetry
 */
typedef struct __attribute__((packed)) dat_sys_var_short {
    uint16_t address;   ///< Variable address or index (in the data storage)
    value32_t value;    ///< Variable default value
} dat_sys_var_short_t;

/**
 * List of status variables with address, name, type and default values
 * This list is useful to decide how to store and send the status variables
 */
/**
 * List of status variables with address, name, type and default values
 * This list is useful to decide how to store and send the status variables
 */
static const dat_sys_var_t dat_status_list[] = {
    { dat_exp_opmode,          "exp_op_mode",          'u', DAT_IS_STATUS, { .u = DAT_EXP_OPMODE_NORMAL } },
    { dat_exp_last_reset,      "exp_last_reset",       'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_hrs_alive,       "exp_hrs_alive",        'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_hrs_wo_reset,    "exp_hrs_wo_reset",     'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_reset_counter,   "exp_reset_counter",    'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_sw_wdt,          "exp_sw_wdt",           'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_cmds,            "exp_received_cmds",    'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_executed_cmds,   "exp_executed_cmds",    'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_failed_cmds,     "exp_failed_cmds",      'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_board_temp,      "exp_board_temp",       'u', DAT_IS_STATUS, { .u = 0 } },

    { dat_rtc_date_time,       "rtc_date_time",        'u', DAT_IS_STATUS, { .u = 0 } },

    { dat_exp_NTC0_temp,       "exp_NTC0_temp",        'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_NTC1_temp,       "exp_NTC1_temp",        'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_NTC2_temp,       "exp_NTC2_temp",        'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_NTC3_temp,       "exp_NTC3_temp",        'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_NTC4_temp,       "exp_NTC4_temp",        'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_NTC5_temp,       "exp_NTC5_temp",        'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_NTC6_temp,       "exp_NTC6_temp",        'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_exp_NTC7_temp,       "exp_NTC7_temp",        'u', DAT_IS_STATUS, { .u = 0 } },

    { data_exp_tec0_status,    "exp_tec0_status",      'u', DAT_IS_STATUS, { .u = 0 } },
    { data_exp_tec0_voltage,   "exp_tec0_voltage",     'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_tec1_status,    "exp_tec1_status",      'u', DAT_IS_STATUS, { .u = 0 } },
    { data_exp_tec1_voltage,   "exp_tec1_voltage",     'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_tec2_status,    "exp_tec2_status",      'u', DAT_IS_STATUS, { .u = 0 } },
    { data_exp_tec2_voltage,   "exp_tec2_voltage",     'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_tec3_status,    "exp_tec3_status",      'u', DAT_IS_STATUS, { .u = 0 } },
    { data_exp_tec3_voltage,   "exp_tec3_voltage",     'u', DAT_IS_CONFIG, { .u = 0 } },

    { data_exp_heater0_duty,   "exp_heater0_duty",     'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_heater1_duty,   "exp_heater1_duty",     'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_heater2_duty,   "exp_heater2_duty",     'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_heater3_duty,   "exp_heater3_duty",     'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_heater4_duty,   "exp_heater4_duty",     'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_heater5_duty,   "exp_heater5_duty",     'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_heater6_duty,   "exp_heater6_duty",     'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_heater7_duty,   "exp_heater7_duty",     'u', DAT_IS_CONFIG, { .u = 0 } },

    { data_exp_usb_led0_duty,  "exp_usb_led0_duty",    'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_usb_led1_duty,  "exp_usb_led1_duty",    'u', DAT_IS_CONFIG, { .u = 0 } },

    { data_exp_12V_heater_status,    "exp_12V_heater_status",    'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_12V_heater_current,   "exp_12V_heater_current",   'u', DAT_IS_STATUS, { .u = 0 } },
    { data_exp_12V_solenoid_status,  "exp_12V_solenoid_status",  'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_12V_solenoid_current, "exp_12V_solenoid_current", 'u', DAT_IS_STATUS, { .u = 0 } },
    { data_exp_5V_IO_status,         "exp_5V_IO_status",         'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_5V_IO_current,        "exp_5V_IO_current",        'u', DAT_IS_STATUS, { .u = 0 } },
    { data_exp_5V_HD_status,         "exp_5V_HD_status",         'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_5V_HD_current,        "exp_5V_HD_current",        'u', DAT_IS_STATUS, { .u = 0 } },
    { data_exp_5V_TEC_status,        "exp_5V_TEC_status",        'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_5V_TEC_current,       "exp_5V_TEC_current",       'u', DAT_IS_STATUS, { .u = 0 } },
    { data_exp_5V_CAM_status,        "exp_5V_CAM_status",        'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_5V_CAM_current,       "exp_5V_CAM_current",       'u', DAT_IS_STATUS, { .u = 0 } },
    { data_exp_12V_photo_status,     "exp_12V_photo_status",     'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_12V_photo_current,    "exp_12V_photo_current",    'u', DAT_IS_STATUS, { .u = 0 } },
    { data_exp_12V_laser_status,     "exp_12V_laser_status",     'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_12V_laser_current,    "exp_12V_laser_current",    'u', DAT_IS_STATUS, { .u = 0 } },

    { data_exp_hd0_status,      "exp_hd0_status",       'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_hd1_status,      "exp_hd1_status",       'u', DAT_IS_CONFIG, { .u = 0 } },
    { data_exp_hd2_status,      "exp_hd2_status",       'u', DAT_IS_CONFIG, { .u = 0 } },

    { dat_com_count_tm,         "com_count_tm",         'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_com_count_tc,         "com_count_tc",         'u', DAT_IS_STATUS, { .u = 0 } },
    { dat_com_last_tc,          "dat_com_last_tc",      'u', DAT_IS_STATUS, { .u = 0 } }
};


///< The dat_status_last_var constant serves for looping through all status variables
static const int dat_status_last_var = sizeof(dat_status_list) / sizeof(dat_status_list[0]);


/**
 * PAYLOAD DATA DEFINITIONS
 */

/**
 * Struct for storing temperature data.
 */
typedef struct __attribute__((__packed__)) temp_data {
    uint32_t index;
    uint32_t timestamp;
    float obc_temp_1;
} temp_data_t;

/**
 * Enum constants for dynamically identifying payload fields at execution time.
 *
 * Also permits adding payload fields cheaply.
 *
 * The last_sensor constant serves only for comparison when looping through all
 * payload values. For example:
 *
 * @code
 * for (payload_id_t i = 0; i < last_sensor; i++)
 * {
 * // some code using i.
 * }
 * @endcode
 */
typedef enum payload_id {
    temp_sensors=0,         ///< Temperature sensors
    last_sensor             ///< Dummy element, the amount of payload variables
} payload_id_t;

/**
 * Struct for storing data collected by status variables.
 */
typedef struct __attribute__((__packed__)) sta_data {
    uint32_t index;
    uint32_t timestamp;
    uint32_t sta_buff[sizeof(dat_status_list) / sizeof(dat_status_list[0])];
} sta_data_t;



/** The repository's name */
#define DAT_TABLE_STATUS "dat_status"      ///< Status variables table name
#define DAT_TABLE_DATA   "dat_data"        ///< Data storage table name
#define DAT_TABLE_FP     "dat_flightplan"  ///< Flight plan table name

/**
 * Search and return a status variable definition from dat_status_list by index or by name
 * @param address Variable index
 * @param name Variable name
 * @return dat_sys_var_t or 0 if not found.
 */
dat_sys_var_t dat_get_status_var_def(dat_status_address_t address);
dat_sys_var_t dat_get_status_var_def_name(char *name);

/**
 * Print the names and values of a system status variable list.
 * @param status Pointer to a status variables list
 */
void dat_print_system_var(dat_sys_var_t *status);

#endif //REPO_DATA_SCHEMA_H

