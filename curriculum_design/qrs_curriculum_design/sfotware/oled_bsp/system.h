/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_qsys' in SOPC Builder design 'system_qsy'
 * SOPC Builder design path: E:/altera/13.1/lab/qrs_curriculum_design/system_qsy.sopcinfo
 *
 * Generated: Thu Apr 09 10:33:51 CST 2020
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00060820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x13
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x00020020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 1
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x13
#define ALT_CPU_NAME "nios2_qsys"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_RESET_ADDR 0x00050000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00060820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x13
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x00020020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 1
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x13
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_RESET_ADDR 0x00050000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_NIOS2_QSYS


/*
 * IIC_DATA configuration
 *
 */

#define ALT_MODULE_CLASS_IIC_DATA altera_avalon_pio
#define IIC_DATA_BASE 0x61030
#define IIC_DATA_BIT_CLEARING_EDGE_REGISTER 0
#define IIC_DATA_BIT_MODIFYING_OUTPUT_REGISTER 0
#define IIC_DATA_CAPTURE 0
#define IIC_DATA_DATA_WIDTH 24
#define IIC_DATA_DO_TEST_BENCH_WIRING 0
#define IIC_DATA_DRIVEN_SIM_VALUE 0
#define IIC_DATA_EDGE_TYPE "NONE"
#define IIC_DATA_FREQ 50000000
#define IIC_DATA_HAS_IN 0
#define IIC_DATA_HAS_OUT 1
#define IIC_DATA_HAS_TRI 0
#define IIC_DATA_IRQ -1
#define IIC_DATA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define IIC_DATA_IRQ_TYPE "NONE"
#define IIC_DATA_NAME "/dev/IIC_DATA"
#define IIC_DATA_RESET_VALUE 0
#define IIC_DATA_SPAN 16
#define IIC_DATA_TYPE "altera_avalon_pio"


/*
 * IIC_GO configuration
 *
 */

#define ALT_MODULE_CLASS_IIC_GO altera_avalon_pio
#define IIC_GO_BASE 0x61020
#define IIC_GO_BIT_CLEARING_EDGE_REGISTER 0
#define IIC_GO_BIT_MODIFYING_OUTPUT_REGISTER 0
#define IIC_GO_CAPTURE 0
#define IIC_GO_DATA_WIDTH 1
#define IIC_GO_DO_TEST_BENCH_WIRING 0
#define IIC_GO_DRIVEN_SIM_VALUE 0
#define IIC_GO_EDGE_TYPE "NONE"
#define IIC_GO_FREQ 50000000
#define IIC_GO_HAS_IN 0
#define IIC_GO_HAS_OUT 1
#define IIC_GO_HAS_TRI 0
#define IIC_GO_IRQ -1
#define IIC_GO_IRQ_INTERRUPT_CONTROLLER_ID -1
#define IIC_GO_IRQ_TYPE "NONE"
#define IIC_GO_NAME "/dev/IIC_GO"
#define IIC_GO_RESET_VALUE 0
#define IIC_GO_SPAN 16
#define IIC_GO_TYPE "altera_avalon_pio"


/*
 * KEY0 configuration
 *
 */

#define ALT_MODULE_CLASS_KEY0 altera_avalon_pio
#define KEY0_BASE 0x61010
#define KEY0_BIT_CLEARING_EDGE_REGISTER 0
#define KEY0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEY0_CAPTURE 0
#define KEY0_DATA_WIDTH 1
#define KEY0_DO_TEST_BENCH_WIRING 0
#define KEY0_DRIVEN_SIM_VALUE 0
#define KEY0_EDGE_TYPE "NONE"
#define KEY0_FREQ 50000000
#define KEY0_HAS_IN 1
#define KEY0_HAS_OUT 0
#define KEY0_HAS_TRI 0
#define KEY0_IRQ -1
#define KEY0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define KEY0_IRQ_TYPE "NONE"
#define KEY0_NAME "/dev/KEY0"
#define KEY0_RESET_VALUE 0
#define KEY0_SPAN 16
#define KEY0_TYPE "altera_avalon_pio"


/*
 * KEY1 configuration
 *
 */

#define ALT_MODULE_CLASS_KEY1 altera_avalon_pio
#define KEY1_BASE 0x61000
#define KEY1_BIT_CLEARING_EDGE_REGISTER 0
#define KEY1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEY1_CAPTURE 0
#define KEY1_DATA_WIDTH 1
#define KEY1_DO_TEST_BENCH_WIRING 0
#define KEY1_DRIVEN_SIM_VALUE 0
#define KEY1_EDGE_TYPE "NONE"
#define KEY1_FREQ 50000000
#define KEY1_HAS_IN 1
#define KEY1_HAS_OUT 0
#define KEY1_HAS_TRI 0
#define KEY1_IRQ -1
#define KEY1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define KEY1_IRQ_TYPE "NONE"
#define KEY1_NAME "/dev/KEY1"
#define KEY1_RESET_VALUE 0
#define KEY1_SPAN 16
#define KEY1_TYPE "altera_avalon_pio"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV E"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart"
#define ALT_STDERR_BASE 0x61048
#define ALT_STDERR_DEV jtag_uart
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart"
#define ALT_STDIN_BASE 0x61048
#define ALT_STDIN_DEV jtag_uart
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart"
#define ALT_STDOUT_BASE 0x61048
#define ALT_STDOUT_DEV jtag_uart
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "system_qsy"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x61048
#define JTAG_UART_IRQ 0
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/jtag_uart"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * onchip_memory_ram configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory_ram altera_avalon_onchip_memory2
#define ONCHIP_MEMORY_RAM_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY_RAM_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY_RAM_BASE 0x20000
#define ONCHIP_MEMORY_RAM_CONTENTS_INFO ""
#define ONCHIP_MEMORY_RAM_DUAL_PORT 0
#define ONCHIP_MEMORY_RAM_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_RAM_INIT_CONTENTS_FILE "system_qsy_onchip_memory_ram"
#define ONCHIP_MEMORY_RAM_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY_RAM_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY_RAM_IRQ -1
#define ONCHIP_MEMORY_RAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY_RAM_NAME "/dev/onchip_memory_ram"
#define ONCHIP_MEMORY_RAM_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY_RAM_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_RAM_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY_RAM_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY_RAM_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY_RAM_SIZE_VALUE 81920
#define ONCHIP_MEMORY_RAM_SPAN 81920
#define ONCHIP_MEMORY_RAM_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY_RAM_WRITABLE 1


/*
 * onchip_memory_rom configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory_rom altera_avalon_onchip_memory2
#define ONCHIP_MEMORY_ROM_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY_ROM_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY_ROM_BASE 0x50000
#define ONCHIP_MEMORY_ROM_CONTENTS_INFO ""
#define ONCHIP_MEMORY_ROM_DUAL_PORT 0
#define ONCHIP_MEMORY_ROM_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_ROM_INIT_CONTENTS_FILE "system_qsy_onchip_memory_rom"
#define ONCHIP_MEMORY_ROM_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY_ROM_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY_ROM_IRQ -1
#define ONCHIP_MEMORY_ROM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY_ROM_NAME "/dev/onchip_memory_rom"
#define ONCHIP_MEMORY_ROM_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY_ROM_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_ROM_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY_ROM_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY_ROM_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY_ROM_SIZE_VALUE 40960
#define ONCHIP_MEMORY_ROM_SPAN 40960
#define ONCHIP_MEMORY_ROM_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY_ROM_WRITABLE 0


/*
 * sysid_qsys configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_qsys altera_avalon_sysid_qsys
#define SYSID_QSYS_BASE 0x61040
#define SYSID_QSYS_ID 0
#define SYSID_QSYS_IRQ -1
#define SYSID_QSYS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_QSYS_NAME "/dev/sysid_qsys"
#define SYSID_QSYS_SPAN 8
#define SYSID_QSYS_TIMESTAMP 1586355820
#define SYSID_QSYS_TYPE "altera_avalon_sysid_qsys"

#endif /* __SYSTEM_H_ */
