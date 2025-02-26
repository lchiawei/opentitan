// Copyright lowRISC contributors (OpenTitan project).
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// xbar_env_pkg__params generated by `topgen.py` tool


// List of Xbar device memory map
tl_device_t xbar_devices[$] = '{
    '{"rv_dm__regs", '{
        '{32'h21200000, 32'h2120000f}
    }},
    '{"rv_dm__mem", '{
        '{32'h00040000, 32'h00040fff}
    }},
    '{"rom_ctrl0__rom", '{
        '{32'h00008000, 32'h0000ffff}
    }},
    '{"rom_ctrl0__regs", '{
        '{32'h211e0000, 32'h211e007f}
    }},
    '{"rom_ctrl1__rom", '{
        '{32'h00020000, 32'h0002ffff}
    }},
    '{"rom_ctrl1__regs", '{
        '{32'h211e1000, 32'h211e107f}
    }},
    '{"soc_proxy__core", '{
        '{32'h22030000, 32'h2203000f}
    }},
    '{"soc_proxy__ctn", '{
        '{32'h40000000, 32'h7fffffff}
    }},
    '{"hmac", '{
        '{32'h21110000, 32'h21111fff}
    }},
    '{"kmac", '{
        '{32'h21120000, 32'h21120fff}
    }},
    '{"aes", '{
        '{32'h21100000, 32'h211000ff}
    }},
    '{"csrng", '{
        '{32'h21150000, 32'h2115007f}
    }},
    '{"edn0", '{
        '{32'h21170000, 32'h2117007f}
    }},
    '{"edn1", '{
        '{32'h21180000, 32'h2118007f}
    }},
    '{"rv_plic", '{
        '{32'h28000000, 32'h2fffffff}
    }},
    '{"otbn", '{
        '{32'h21130000, 32'h2113ffff}
    }},
    '{"keymgr_dpe", '{
        '{32'h21140000, 32'h211400ff}
    }},
    '{"rv_core_ibex__cfg", '{
        '{32'h211f0000, 32'h211f00ff}
    }},
    '{"sram_ctrl_main__regs", '{
        '{32'h211c0000, 32'h211c003f}
    }},
    '{"sram_ctrl_main__ram", '{
        '{32'h10000000, 32'h1000ffff}
    }},
    '{"sram_ctrl_mbox__regs", '{
        '{32'h211d0000, 32'h211d003f}
    }},
    '{"sram_ctrl_mbox__ram", '{
        '{32'h11000000, 32'h11000fff}
    }},
    '{"dma", '{
        '{32'h22010000, 32'h220101ff}
    }},
    '{"mbx0__core", '{
        '{32'h22000000, 32'h2200007f}
    }},
    '{"mbx1__core", '{
        '{32'h22000100, 32'h2200017f}
    }},
    '{"mbx2__core", '{
        '{32'h22000200, 32'h2200027f}
    }},
    '{"mbx3__core", '{
        '{32'h22000300, 32'h2200037f}
    }},
    '{"mbx4__core", '{
        '{32'h22000400, 32'h2200047f}
    }},
    '{"mbx5__core", '{
        '{32'h22000500, 32'h2200057f}
    }},
    '{"mbx6__core", '{
        '{32'h22000600, 32'h2200067f}
    }},
    '{"mbx_jtag__core", '{
        '{32'h22000800, 32'h2200087f}
    }},
    '{"mbx_pcie0__core", '{
        '{32'h22040000, 32'h2204007f}
    }},
    '{"mbx_pcie1__core", '{
        '{32'h22040100, 32'h2204017f}
    }},
    '{"uart0", '{
        '{32'h30010000, 32'h3001003f}
    }},
    '{"i2c0", '{
        '{32'h30080000, 32'h3008007f}
    }},
    '{"gpio", '{
        '{32'h30000000, 32'h3000007f}
    }},
    '{"spi_host0", '{
        '{32'h30300000, 32'h3030003f}
    }},
    '{"spi_device", '{
        '{32'h30310000, 32'h30311fff}
    }},
    '{"rv_timer", '{
        '{32'h30100000, 32'h301001ff}
    }},
    '{"pwrmgr_aon", '{
        '{32'h30400000, 32'h3040007f}
    }},
    '{"rstmgr_aon", '{
        '{32'h30410000, 32'h3041007f}
    }},
    '{"clkmgr_aon", '{
        '{32'h30420000, 32'h3042007f}
    }},
    '{"pinmux_aon", '{
        '{32'h30460000, 32'h304607ff}
    }},
    '{"otp_ctrl__core", '{
        '{32'h30130000, 32'h30137fff}
    }},
    '{"otp_ctrl__prim", '{
        '{32'h30140000, 32'h3014001f}
    }},
    '{"lc_ctrl__regs", '{
        '{32'h30150000, 32'h301500ff}
    }},
    '{"alert_handler", '{
        '{32'h30160000, 32'h301607ff}
    }},
    '{"sram_ctrl_ret_aon__regs", '{
        '{32'h30500000, 32'h3050003f}
    }},
    '{"sram_ctrl_ret_aon__ram", '{
        '{32'h30600000, 32'h30600fff}
    }},
    '{"aon_timer_aon", '{
        '{32'h30470000, 32'h3047003f}
    }},
    '{"ast", '{
        '{32'h30480000, 32'h304803ff}
    }},
    '{"soc_dbg_ctrl__core", '{
        '{32'h30170000, 32'h3017001f}
    }},
    '{"mbx0__soc", '{
        '{32'h01465000, 32'h0146501f}
    }},
    '{"mbx1__soc", '{
        '{32'h01465100, 32'h0146511f}
    }},
    '{"mbx2__soc", '{
        '{32'h01465200, 32'h0146521f}
    }},
    '{"mbx3__soc", '{
        '{32'h01465300, 32'h0146531f}
    }},
    '{"mbx4__soc", '{
        '{32'h01465400, 32'h0146541f}
    }},
    '{"mbx5__soc", '{
        '{32'h01465500, 32'h0146551f}
    }},
    '{"mbx6__soc", '{
        '{32'h01496000, 32'h0149601f}
    }},
    '{"mbx_pcie0__soc", '{
        '{32'h01460100, 32'h0146011f}
    }},
    '{"mbx_pcie1__soc", '{
        '{32'h01460200, 32'h0146021f}
    }},
    '{"racl_ctrl", '{
        '{32'h01461f00, 32'h01461f1f}
    }},
    '{"ac_range_check", '{
        '{32'h01464000, 32'h014643ff}
    }},
    '{"rv_dm__dbg", '{
        '{32'h00000000, 32'h000001ff}
    }},
    '{"mbx_jtag__soc", '{
        '{32'h00001000, 32'h0000101f}
    }},
    '{"lc_ctrl__dmi", '{
        '{32'h00020000, 32'h00020fff}
    }},
    '{"soc_dbg_ctrl__jtag", '{
        '{32'h00002300, 32'h0000231f}
    }}};

  // List of Xbar hosts
tl_host_t xbar_hosts[$] = '{
    '{"rv_core_ibex__corei", 0, '{
        "rom_ctrl0__rom",
        "rom_ctrl1__rom",
        "rv_dm__mem",
        "sram_ctrl_main__ram",
        "soc_proxy__ctn"}}
    ,
    '{"rv_core_ibex__cored", 1, '{
        "rom_ctrl0__rom",
        "rom_ctrl0__regs",
        "rom_ctrl1__rom",
        "rom_ctrl1__regs",
        "rv_dm__mem",
        "rv_dm__regs",
        "sram_ctrl_main__ram",
        "uart0",
        "i2c0",
        "gpio",
        "spi_host0",
        "spi_device",
        "rv_timer",
        "pwrmgr_aon",
        "rstmgr_aon",
        "clkmgr_aon",
        "pinmux_aon",
        "otp_ctrl__core",
        "otp_ctrl__prim",
        "lc_ctrl__regs",
        "alert_handler",
        "ast",
        "sram_ctrl_ret_aon__ram",
        "sram_ctrl_ret_aon__regs",
        "aon_timer_aon",
        "soc_dbg_ctrl__core",
        "aes",
        "csrng",
        "edn0",
        "edn1",
        "hmac",
        "rv_plic",
        "otbn",
        "keymgr_dpe",
        "kmac",
        "sram_ctrl_main__regs",
        "rv_core_ibex__cfg",
        "sram_ctrl_mbox__ram",
        "sram_ctrl_mbox__regs",
        "soc_proxy__ctn",
        "soc_proxy__core",
        "dma",
        "mbx0__core",
        "mbx1__core",
        "mbx2__core",
        "mbx3__core",
        "mbx4__core",
        "mbx5__core",
        "mbx6__core",
        "mbx_jtag__core",
        "mbx_pcie0__core",
        "mbx_pcie1__core"}}
    ,
    '{"rv_dm__sba", 2, '{
        "rom_ctrl0__rom",
        "rom_ctrl0__regs",
        "rom_ctrl1__rom",
        "rom_ctrl1__regs",
        "rv_dm__mem",
        "rv_dm__regs",
        "sram_ctrl_main__ram",
        "uart0",
        "i2c0",
        "gpio",
        "spi_host0",
        "spi_device",
        "rv_timer",
        "pwrmgr_aon",
        "rstmgr_aon",
        "clkmgr_aon",
        "pinmux_aon",
        "otp_ctrl__core",
        "otp_ctrl__prim",
        "lc_ctrl__regs",
        "alert_handler",
        "ast",
        "sram_ctrl_ret_aon__ram",
        "sram_ctrl_ret_aon__regs",
        "aon_timer_aon",
        "soc_dbg_ctrl__core",
        "aes",
        "csrng",
        "edn0",
        "edn1",
        "hmac",
        "rv_plic",
        "otbn",
        "keymgr_dpe",
        "kmac",
        "sram_ctrl_main__regs",
        "rv_core_ibex__cfg",
        "sram_ctrl_mbox__ram",
        "sram_ctrl_mbox__regs",
        "soc_proxy__ctn",
        "soc_proxy__core",
        "dma",
        "mbx0__core",
        "mbx1__core",
        "mbx2__core",
        "mbx3__core",
        "mbx4__core",
        "mbx5__core",
        "mbx6__core",
        "mbx_jtag__core",
        "mbx_pcie0__core",
        "mbx_pcie1__core"}}
    ,
    '{"dma__host", 3, '{
        "sram_ctrl_main__ram",
        "sram_ctrl_mbox__ram",
        "aes",
        "hmac",
        "otbn",
        "keymgr_dpe",
        "kmac",
        "soc_proxy__ctn",
        "uart0",
        "i2c0",
        "gpio",
        "spi_host0",
        "spi_device",
        "rv_timer",
        "pwrmgr_aon",
        "rstmgr_aon",
        "clkmgr_aon",
        "pinmux_aon",
        "otp_ctrl__core",
        "otp_ctrl__prim",
        "lc_ctrl__regs",
        "alert_handler",
        "ast",
        "sram_ctrl_ret_aon__ram",
        "sram_ctrl_ret_aon__regs",
        "aon_timer_aon",
        "soc_dbg_ctrl__core"}}
    ,
    '{"mbx0__sram", 4, '{
        "sram_ctrl_mbox__ram"}}
    ,
    '{"mbx1__sram", 5, '{
        "sram_ctrl_mbox__ram"}}
    ,
    '{"mbx2__sram", 6, '{
        "sram_ctrl_mbox__ram"}}
    ,
    '{"mbx3__sram", 7, '{
        "sram_ctrl_mbox__ram"}}
    ,
    '{"mbx4__sram", 8, '{
        "sram_ctrl_mbox__ram"}}
    ,
    '{"mbx5__sram", 9, '{
        "sram_ctrl_mbox__ram"}}
    ,
    '{"mbx6__sram", 10, '{
        "sram_ctrl_mbox__ram"}}
    ,
    '{"mbx_jtag__sram", 11, '{
        "sram_ctrl_mbox__ram"}}
    ,
    '{"mbx_pcie0__sram", 12, '{
        "sram_ctrl_mbox__ram"}}
    ,
    '{"mbx_pcie1__sram", 13, '{
        "sram_ctrl_mbox__ram"}}
};
