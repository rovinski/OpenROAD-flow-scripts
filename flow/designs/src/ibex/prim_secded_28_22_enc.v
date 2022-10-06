module prim_secded_28_22_enc (
	in,
	out
);
	input [21:0] in;
	output wire [27:0] out;
	assign out[0] = in[0];
	assign out[1] = in[1];
	assign out[2] = in[2];
	assign out[3] = in[3];
	assign out[4] = in[4];
	assign out[5] = in[5];
	assign out[6] = in[6];
	assign out[7] = in[7];
	assign out[8] = in[8];
	assign out[9] = in[9];
	assign out[10] = in[10];
	assign out[11] = in[11];
	assign out[12] = in[12];
	assign out[13] = in[13];
	assign out[14] = in[14];
	assign out[15] = in[15];
	assign out[16] = in[16];
	assign out[17] = in[17];
	assign out[18] = in[18];
	assign out[19] = in[19];
	assign out[20] = in[20];
	assign out[21] = in[21];
	assign out[22] = ((((((((((in[0] ^ in[1]) ^ in[2]) ^ in[3]) ^ in[4]) ^ in[5]) ^ in[6]) ^ in[7]) ^ in[8]) ^ in[9]) ^ in[20]) ^ in[21];
	assign out[23] = ((((((((((in[0] ^ in[1]) ^ in[2]) ^ in[3]) ^ in[10]) ^ in[11]) ^ in[12]) ^ in[13]) ^ in[14]) ^ in[15]) ^ in[20]) ^ in[21];
	assign out[24] = (((((((((in[0] ^ in[4]) ^ in[5]) ^ in[6]) ^ in[10]) ^ in[11]) ^ in[12]) ^ in[16]) ^ in[17]) ^ in[18]) ^ in[20];
	assign out[25] = (((((((((in[1] ^ in[4]) ^ in[7]) ^ in[8]) ^ in[10]) ^ in[13]) ^ in[14]) ^ in[16]) ^ in[17]) ^ in[19]) ^ in[21];
	assign out[26] = ((((((((((in[2] ^ in[5]) ^ in[7]) ^ in[9]) ^ in[11]) ^ in[13]) ^ in[15]) ^ in[16]) ^ in[18]) ^ in[19]) ^ in[20]) ^ in[21];
	assign out[27] = ((((((((((in[3] ^ in[6]) ^ in[8]) ^ in[9]) ^ in[12]) ^ in[14]) ^ in[15]) ^ in[17]) ^ in[18]) ^ in[19]) ^ in[20]) ^ in[21];
endmodule
