module ram(
	input w_en,
	input [3:0] address,
	input [31:0] data_input,
	output reg [31:0] data_output
);
	reg [31:0] mem [0:15];
	
	always @* begin
		if (w_en) mem[address] = data_input;
		data_output = mem[address];
	end
endmodule
