// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// TODO(#24368): Adapt the startup assembly for real IMM_ROM_EXT. This startup
// assembly only works for hello-world IMM_ROM_EXT.
#include "hw/top_earlgrey/sw/autogen/top_earlgrey_memory.h"
#include "sw/device/lib/base/hardened_asm.h"

  /**
   * NOTE: The "ax" flag below is necessary to ensure that this section
   * is allocated executable space in ROM by the linker.
   */
  .section .crt, "ax"

  /**
   * Entry point.
   *
   * This symbol is jumped to from `rom_boot` using the `entry_point` field
   * of the manifest.
   */
  .balign 4
  .global _imm_rom_ext_start_boot
  .type _imm_rom_ext_start_boot, @function
_imm_rom_ext_start_boot:

  .option push
  .option norelax

  /**
   * Set up the global pointer `gp`.
   */
  la gp, __global_pointer$

  .option pop

  /**
   * Save registers.
   */
  addi sp, sp, -120
  sw s0, 8(sp)
  sw ra, 12(sp)
  sw s1, 16(sp)
  sw s2, 20(sp)
  sw s3, 24(sp)
  sw s4, 28(sp)
  sw s5, 32(sp)
  sw s6, 36(sp)
  sw s7, 40(sp)
  sw s8, 44(sp)
  sw s9, 48(sp)
  sw s10, 52(sp)
  sw s11, 56(sp)
  sw t0, 60(sp)
  sw t1, 64(sp)
  sw t2, 68(sp)
  sw t3, 72(sp)
  sw t4, 76(sp)
  sw t5, 80(sp)
  sw t6, 84(sp)
  sw a0, 88(sp)
  sw a1, 92(sp)
  sw a2, 96(sp)
  sw a3, 100(sp)
  sw a4, 104(sp)
  sw a5, 108(sp)
  sw a6, 112(sp)
  sw a7, 116(sp)

  /**
   * Disable Interrupts.
   *
   * We cannot disable exceptions, or Ibex's non-maskable interrupts (interrupt
   * 31), so we still need to be careful.
   */

  // Clear `MIE` field of `mstatus` (disable interrupts globally).
  csrci mstatus, 0x8

  /**
   * Clear all the machine-defined interrupts, `MEIE`, `MTIE`, and `MSIE` fields
   * of `mie`.
   */
  li   t0, 0xFFFF0888
  csrc mie, t0

  /**
   * Set up the stack pointer.
   *
   * In RISC-V, the stack grows downwards, so we load the address of the highest
   * word in the stack into sp.
   *
   * If an exception fires, the handler is conventionaly only allowed to clobber
   * memory at addresses below `sp`.
   */
  # la   sp, _stack_end

  /**
   * Setup C Runtime
   */
  /**
   * Initialize the `.data` section in RAM from ROM.
   */
  la   a0, _data_start
  la   a1, _data_end
  la   a2, _data_init_start
  jal  ra, crt_section_copy

  /**
   * Initialize the `.bss` section.
   *
   * We do this despite zeroing all of SRAM above, so that we still zero `.bss`
   * once we've enabled SRAM scrambling.
   */
  la   a0, _bss_start
  la   a1, _bss_end
  jal  ra, crt_section_clear

  jal ra, imm_rom_ext_main

  /**
   * Restore registers.
   */
  lw s0, 8(sp)
  lw ra, 12(sp)
  lw s1, 16(sp)
  lw s2, 20(sp)
  lw s3, 24(sp)
  lw s4, 28(sp)
  lw s5, 32(sp)
  lw s6, 36(sp)
  lw s7, 40(sp)
  lw s8, 44(sp)
  lw s9, 48(sp)
  lw s10, 52(sp)
  lw s11, 56(sp)
  lw t0, 60(sp)
  lw t1, 64(sp)
  lw t2, 68(sp)
  lw t3, 72(sp)
  lw t4, 76(sp)
  lw t5, 80(sp)
  lw t6, 84(sp)
  lw a0, 88(sp)
  lw a1, 92(sp)
  lw a2, 96(sp)
  lw a3, 100(sp)
  lw a4, 104(sp)
  lw a5, 108(sp)
  lw a6, 112(sp)
  lw a7, 116(sp)
  addi sp, sp, 120

  ret

  .size _imm_rom_ext_start_boot, .-_imm_rom_ext_start_boot
