module rom(
	input [3:0] address,
	output reg [31:0] data_output
);
	reg [31:0] mem [0:15];
	
	always @* begin
		data_output = mem[address];
	end
endmodule
