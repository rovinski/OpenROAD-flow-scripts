# correlateRC.py gcd,ibex,aes,jpeg,chameleon,riscv32i,chameleon_hier
# cap units pf/um
set_layer_rc -layer li1 -capacitance 1.499e-04 -resistance 7.176e-02
set_layer_rc -layer met1 -capacitance 1.72375E-04 -resistance 8.929e-04
set_layer_rc -layer met2 -capacitance 1.36233E-04 -resistance 8.929e-04
set_layer_rc -layer met3 -capacitance 2.14962E-04 -resistance 1.567e-04
set_layer_rc -layer met4 -capacitance 1.48128E-04 -resistance 1.567e-04
set_layer_rc -layer met5 -capacitance 1.54087E-04 -resistance 1.781e-05
# RV temp values -- need correlation
set_layer_rc -layer met6 -capacitance 1.54087E-04 -resistance 1.781e-05
set_layer_rc -layer met7 -capacitance 1.54087E-04 -resistance 1.781e-05
set_layer_rc -layer met8 -capacitance 1.54087E-04 -resistance 1.781e-05
set_layer_rc -layer met9 -capacitance 1.54087E-04 -resistance 1.781e-05
# end correlate

set_layer_rc -via mcon -resistance 9.249146E-3
set_layer_rc -via via -resistance 4.5E-3
set_layer_rc -via via2 -resistance 3.368786E-3
set_layer_rc -via via3 -resistance 0.376635E-3
set_layer_rc -via via4 -resistance 0.00580E-3
# RV temp values -- need correlation 
set_layer_rc -via via5 -resistance 0.00580E-3
set_layer_rc -via via6 -resistance 0.00580E-3
set_layer_rc -via via7 -resistance 0.00580E-3
set_layer_rc -via via8 -resistance 0.00580E-3

set_wire_rc -signal -layer met2
set_wire_rc -clock -layer met5
