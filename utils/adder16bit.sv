module adder16bit(
	input logic [15:0] a, b,
	output logic [15:0] out
);
	assign out = a + b;
endmodule