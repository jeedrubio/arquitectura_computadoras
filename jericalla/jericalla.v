module jericalla(
	input [16:0] instr,
	output reg [31:0] out
);
	wire [31:0] a, b, r;
	
	rom rom_ins(.address1(instr[11:8]), .address2(instr[7:4]), .data_out1(a), .data_out2(b));
	alu alu_ins(.sel(instr[15:12]), .a(a), .b(b), .r(r));
	ram ram_ins(.w_en(instr[16]), .address(instr[3:0]), .data_input(r));
	
	assign out = r;
endmodule
