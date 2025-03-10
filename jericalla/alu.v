module alu(
	input [3:0] sel, 
	input [31:0] a, b,
	output reg [31:0] r
);
	always @* begin
		case (sel)
			4'b0000: r = a & b;
			4'b0001: r = a | b;
			4'b0010: r = a + b;
			4'b0110: r = a - b;
			4'b0111: r = a < b ? 32'b1 : 32'b0;
			4'b1100: r = ~(a | b);
			default: r = 32'b0;
		endcase
	end
endmodule
