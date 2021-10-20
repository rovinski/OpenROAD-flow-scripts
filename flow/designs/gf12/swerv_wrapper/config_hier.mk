export DESIGN_NAME = swerv_wrapper
export PLATFORM    = gf12

export FLOW_VARIANT = hier
export SYNTH_HIERARCHICAL = 1
export MAX_UNGROUP_SIZE = 100
#export RTLMP_FLOW = True

export VERILOG_FILES = ./designs/src/swerv/swerv_wrapper.sv2v.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NAME)/macros.v
export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NAME)/constraint.sdc

export WRAP_LEFS      = $(PLATFORM_DIR)/lef/gf12_1rf_lg11_w40_all.lef \
                        $(PLATFORM_DIR)/lef/gf12_1rf_lg6_w22_all.lef \
                        $(PLATFORM_DIR)/lef/gf12_1rf_lg8_w34_all.lef

export WRAP_LIBS      = $(PLATFORM_DIR)/lib/gf12_1rf_lg11_w40_all_ffpg_sigcmin_0p88v_0p88v_m40c.lib \
                        $(PLATFORM_DIR)/lib/gf12_1rf_lg6_w22_all_ffpg_sigcmin_0p88v_0p88v_m40c.lib \
                        $(PLATFORM_DIR)/lib/gf12_1rf_lg8_w34_all_ffpg_sigcmin_0p88v_0p88v_m40c.lib

export ADDITIONAL_GDS = $(PLATFORM_DIR)/gds/gf12_1rf_lg11_w40_all.gds2 \
                        $(PLATFORM_DIR)/gds/gf12_1rf_lg6_w22_all.gds2 \
                        $(PLATFORM_DIR)/gds/gf12_1rf_lg8_w34_all.gds2
#
# RTL_MP Settings
export RTLMP_MAX_INST = 5000
export RTLMP_MIN_INST = 1000
export RTLMP_MAX_MACRO = 12
export RTLMP_MIN_MACRO = 4
export RTLMP_RPT_DIR = $(OBJECTS_DIR)/rtlmp
export RTLMP_RPT_FILE = partition.txt
export RTLMP_CONFIG_FILE = ./designs/gf12/swerv_wrapper/rtlmp_config.txt
#export RTLMP_BLOCKAGE_FILE = ./designs/gf12/swerv_wrapper/macro_blockage.txt

export DIE_AREA    = 0 0 900 800
export CORE_AREA   = 10 10 890 790
export PLACE_PINS_ARGS = -exclude left:* -exclude right:* -exclude top:* -exclude bottom:0-20 -exclude bottom:400-900
export MACRO_BLOCKAGE_HALO = 10 
export PLACE_DENSITY = 0.40
export MACRO_WRAPPERS = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/wrappers.tcl
