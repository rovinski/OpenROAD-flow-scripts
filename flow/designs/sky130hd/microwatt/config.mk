export DESIGN_NICKNAME = microwatt
export DESIGN_NAME = microwatt
export PLATFORM    = sky130hd

export VERILOG_FILES_BLACKBOX = ./designs/src/$(DESIGN_NICKNAME)/IPs/*.v
export VERILOG_FILES = $(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v \
                       $(VERILOG_FILES_BLACKBOX)))

export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export DIE_AREA   = 0 0 2920 3520
export CORE_AREA  = 10 10 2910 3510

export PLACE_DENSITY ?= 0.20

export ABC_CLOCK_PERIOD_IN_PS = 40000

export microwatt_DIR = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)

export ADDITIONAL_GDS_FILES  = $(wildcard $(microwatt_DIR)/gds/*.gds.gz)

export ADDITIONAL_LEFS  = $(wildcard $(microwatt_DIR)/lef/*.lef)

export ADDITIONAL_LIBS = $(wildcard $(microwatt_DIR)/lib/*.lib)

export MACRO_PLACEMENT = $(microwatt_DIR)/microwatt.macro_placement.cfg

# CTS tuning
export CTS_BUF_CELL = sky130_fd_sc_hd__clkbuf_8
export CTS_BUF_DISTANCE = 1000
export CTS_CLUSTER_DIAMETER = 200
export CTS_CLUSTER_SIZE = 25

export export SETUP_SLACK_MARGIN = 0.2

# IR drop estimation supply net name to be analyzed and supply voltage variable
# For multiple nets: PWR_NETS_VOLTAGES  = "VDD1 1.8 VDD2 1.2"
export PWR_NETS_VOLTAGES  = "VDD 1.8"
export GND_NETS_VOLTAGES  = "VSS 0.0"
