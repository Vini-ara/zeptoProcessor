module mux216bit(
	input logic selector,
	input logic [15:0] a, b,
	output logic [15:0] out
);
	assign out = selector ? b : a;
endmodule