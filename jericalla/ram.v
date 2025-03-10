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

`timescale 1ns/1ns
module ram_tb();
	reg w_en;
	reg [6:0] address;
	reg [7:0] data_input;
	wire [7:0] data_output;
	
	ram inst(.w_en(w_en), .address(address), .data_input(data_input), .data_output(data_output));
	initial begin 
		$readmemb("data", inst.mem);
	end
	
	initial begin
		w_en = 1;
		address = 12;
		data_input = 69;
		#100;
		w_en = 0;
		address = 12;
		#100;
	end
endmodule
