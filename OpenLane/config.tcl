# config.tcl for ALU
set ::env(DESIGN_NAME) alu
set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/src/alu.v"
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10.0"        ;# 10 ns => 100 MHz

# Floorplan / placement
set ::env(FP_CORE_UTIL) "30"
set ::env(PL_TARGET_DENSITY) "0.40"

# Size
set ::env(DIE_AREA) "0 0 200 200"
set ::env(CORE_AREA) "10 10 190 190"

# Constraints
set ::env(PNR_SDC_FILE) "$::env(DESIGN_DIR)/src/alu.sdc"
set ::env(SIGNOFF_SDC_FILE) "$::env(DESIGN_DIR)/src/alu.sdc"

# IR Drop (VSRC)
set ::env(VSRC_LOC_FILES) "VPWR $::env(DESIGN_DIR)/src/vsrc.loc VGND $::env(DESIGN_DIR)/src/vsrc.loc"

# PDN settings
set ::env(FP_PDN_ENABLE_GLOBAL_CONNECTIONS) 1
#Grid pitch
set ::env(FP_PDN_VPITCH) 24
set ::env(FP_PDN_HPITCH) 24
#Rail width
set ::env(FP_PDN_VWIDTH) 8
set ::env(FP_PDN_HWIDTH) 8
#Layer
set ::env(FP_PDN_LAYERS) {met4 met5}
set ::env(FP_PDN_POWER_NETS) {VPWR}
set ::env(FP_PDN_GROUND_NETS) {VGND}
