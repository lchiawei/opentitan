# Copyright lowRISC contributors (OpenTitan project).
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0

package(default_visibility = ["//visibility:public"])

load("//rules/opentitan:defs.bzl", "OPENTITAN_CPU")

cc_library(
    name = "p256",
    srcs = ["p256.c"],
    hdrs = ["p256.h"],
    target_compatible_with = [OPENTITAN_CPU],
    deps = [
        "//sw/device/lib/base:hardened",
        "//sw/device/lib/base:hardened_memory",
        "//sw/device/lib/crypto/drivers:otbn",
        "//sw/device/lib/crypto/impl:status",
        "//sw/otbn/crypto:run_p256",
    ],
)

cc_library(
    name = "ecdh_p384",
    srcs = ["ecdh_p384.c"],
    hdrs = ["ecdh_p384.h"],
    target_compatible_with = [OPENTITAN_CPU],
    deps = [
        ":p384_common",
        "//sw/device/lib/base:hardened",
        "//sw/device/lib/base:hardened_memory",
        "//sw/device/lib/crypto/drivers:otbn",
        "//sw/otbn/crypto:p384_ecdh",
    ],
)

cc_library(
    name = "ecdsa_p384",
    hdrs = ["ecdsa_p384.h"],
    target_compatible_with = [OPENTITAN_CPU],
    deps = [
        ":ecdsa_p384_keygen",
        ":ecdsa_p384_sign",
        ":ecdsa_p384_verify",
    ],
)

cc_library(
    name = "ecdsa_p384_keygen",
    srcs = ["ecdsa_p384_keygen.c"],
    hdrs = ["ecdsa_p384_keygen.h"],
    target_compatible_with = [OPENTITAN_CPU],
    deps = [
        ":p384_common",
        "//sw/device/lib/base:hardened",
        "//sw/device/lib/base:hardened_memory",
        "//sw/device/lib/crypto/drivers:otbn",
        "//sw/otbn/crypto:p384_ecdsa_keygen",
    ],
)

cc_library(
    name = "ecdsa_p384_sign",
    srcs = ["ecdsa_p384_sign.c"],
    hdrs = ["ecdsa_p384_sign.h"],
    target_compatible_with = [OPENTITAN_CPU],
    deps = [
        ":p384_common",
        "//sw/device/lib/base:hardened",
        "//sw/device/lib/base:hardened_memory",
        "//sw/device/lib/crypto/drivers:otbn",
        "//sw/otbn/crypto:p384_ecdsa_sign",
    ],
)

cc_library(
    name = "ecdsa_p384_verify",
    srcs = ["ecdsa_p384_verify.c"],
    hdrs = ["ecdsa_p384_verify.h"],
    target_compatible_with = [OPENTITAN_CPU],
    deps = [
        ":p384_common",
        "//sw/device/lib/base:hardened",
        "//sw/device/lib/base:hardened_memory",
        "//sw/device/lib/crypto/drivers:otbn",
        "//sw/otbn/crypto:p384_ecdsa_verify",
    ],
)

cc_library(
    name = "p384_common",
    srcs = ["p384_common.c"],
    hdrs = ["p384_common.h"],
    deps = [
        "//sw/device/lib/crypto/drivers:otbn",
        "//sw/device/lib/crypto/impl:status",
    ],
)
