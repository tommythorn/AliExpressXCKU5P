-makelib xcelium_lib/xpm -sv \
  "G:/xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "G:/xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_4 \
  "../../../ipstatic/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/bd_0/ip/ip_0/sim/bd_9054_microblaze_I_0.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../ipstatic/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/bd_0/ip/ip_1/sim/bd_9054_rst_0_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_11 \
  "../../../ipstatic/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/bd_0/ip/ip_2/sim/bd_9054_ilmb_0.vhd" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/bd_0/ip/ip_3/sim/bd_9054_dlmb_0.vhd" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_19 \
  "../../../ipstatic/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/bd_0/ip/ip_4/sim/bd_9054_dlmb_cntlr_0.vhd" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/bd_0/ip/ip_5/sim/bd_9054_ilmb_cntlr_0.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/bd_0/ip/ip_6/sim/bd_9054_lmb_bram_I_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/bd_0/ip/ip_7/sim/bd_9054_second_dlmb_cntlr_0.vhd" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/bd_0/ip/ip_8/sim/bd_9054_second_ilmb_cntlr_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/bd_0/ip/ip_9/sim/bd_9054_second_lmb_bram_I_0.v" \
-endlib
-makelib xcelium_lib/iomodule_v3_1_6 \
  "../../../ipstatic/hdl/iomodule_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/bd_0/ip/ip_10/sim/bd_9054_iomodule_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/bd_0/sim/bd_9054.v" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_0/sim/ddr4_0_microblaze_mcs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_1/rtl/phy/ddr4_0_phy_ddr4.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy_behav.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_1/rtl/phy/ddr4_phy_v2_2_xiphy.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob_byte.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_1/rtl/iob/ddr4_phy_v2_2_iob.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_1/rtl/clocking/ddr4_phy_v2_2_pll.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_tristate_wrapper.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_riuor_wrapper.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_control_wrapper.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_byte_wrapper.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_1/rtl/xiphy_files/ddr4_phy_v2_2_xiphy_bitslice_wrapper.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/ip_1/rtl/ip_top/ddr4_0_phy.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_wtr.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ref.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_rd_wr.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_periodic.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_group.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ecc_merge_enc.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ecc_gen.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ecc_fi_xor.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ecc_dec_fix.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ecc_buf.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ecc.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_ctl.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_cmd_mux_c.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_cmd_mux_ap.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_arb_p.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_arb_mux_p.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_arb_c.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_arb_a.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_act_timer.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc_act_rank.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/controller/ddr4_v2_2_mc.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/ui/ddr4_v2_2_ui_wr_data.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/ui/ddr4_v2_2_ui_rd_data.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/ui/ddr4_v2_2_ui_cmd.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/ui/ddr4_v2_2_ui.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/clocking/ddr4_v2_2_infrastructure.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_xsdb_bram.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_write.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_wr_byte.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_wr_bit.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_sync.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_read.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_rd_en.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_pi.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_mc_odt.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_debug_microblaze.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_cplx_data.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_cplx.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_config_rom.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_addr_decode.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_top.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal_xsdb_arbiter.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_cal.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_chipscope_xsdb_slave.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_v2_2_dp_AB9.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/ip_top/ddr4_0_ddr4.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/ip_top/ddr4_0_ddr4_mem_intfc.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/cal/ddr4_0_ddr4_cal_riu.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/rtl/ip_top/ddr4_0.sv" \
  "../../../../my_test_ddr4.gen/sources_1/ip/ddr4_0/tb/microblaze_mcs_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

