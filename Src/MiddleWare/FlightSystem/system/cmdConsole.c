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

#include "cmdConsole.h"
#include "error_codes.h"
static const char *tag = "cmdConsole";



cmd_result_t cmd_set_logger(int argc, char *argv[])
{
    int lvl;
    int node;

    if((argc != 3) )
        return CMD_SYNTAX_ERROR;
    lvl = atoi(argv[1]);

    if(lvl > LOG_LVL_VERBOSE)
        return CMD_ERROR;
    node = atoi(argv[2]);

    log_set((log_level_t)lvl, node);
    LOGR(tag, "Log level %d to node %d", log_lvl, log_node);
    return CMD_OK;
}


cmd_result_t Cmd_help(uint32_t argc, uint8_t *argv[]) {

	cmd_table_entry_t *pEntry;

	cmd_result_t result = {
			.result = 0,
			.error = ERROR_OK
	};

	printf("\nAvailable commands\r\n");
	printf("------------------\r\n");

	// Point at the beginning of the command table.
	pEntry = &g_psCmdTable[0];

	// Enter a loop to read each entry from the command table.  The
	// end of the table has been reached when the command name is NULL.
	while (pEntry->pfnCmd) {
		// Print the command name and the brief description.
		printf(pEntry->pcCmd);
		printf(pEntry->pcHelp);
		printf("\r\n");

		// Advance to the next entry in the table.
		pEntry++;

	}
	// Return success.
	return (result);

}
