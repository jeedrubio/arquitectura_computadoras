module rom(
	input [3:0] address1, address2,
	output reg [31:0] data_out1, data_out2
);
	reg [31:0] mem [0:15];
	
	always @* begin
		data_out1 = mem[address1];
		data_out2 = mem[address2];
	end
endmodule
