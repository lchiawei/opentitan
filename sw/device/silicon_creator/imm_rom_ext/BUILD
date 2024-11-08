# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

load("//rules:opentitan.bzl", "elf_to_disassembly", "obj_transform")
load("//rules/opentitan:defs.bzl", "OPENTITAN_CPU", "opentitan_binary")
load("//rules:linker.bzl", "ld_library")
load("//sw/device/silicon_creator/imm_rom_ext:utils.bzl", "bin_to_imm_rom_ext_object", "imm_rom_ext_section")

package(default_visibility = ["//visibility:public"])

ld_library(
    name = "ld_hello_world",
    script = "hello_world.ld",
    deps = [
        "//hw/top_earlgrey/sw/autogen:top_earlgrey_memory",
        "//sw/device:info_sections",
    ],
)

cc_library(
    name = "hello_world",
    srcs = [
        "hello_world.c",
        "hello_world_start.S",
    ],
    hdrs = ["hello_world.h"],
    target_compatible_with = [OPENTITAN_CPU],
    deps = [
        "//sw/device/silicon_creator/lib/drivers:uart",
    ],
)

opentitan_binary(
    name = "hello_world_binaries",
    # TODO(#22780): Integrate real keys for A1 flows.
    exec_env = [
        "//hw/top_earlgrey:fpga_cw340",
    ],
    linker_script = ":ld_hello_world",
    skip_signing = True,
    deps = [
        ":hello_world",
    ],
)

imm_rom_ext_section(
    name = "hello_world_section",
    srcs = [":hello_world_binaries"],
)
