module outMux4(
	input logic [15:0] inp0, inp2, inp3,
	input logic [31:0] inp1,
	input logic [1:0] sel,
	output logic [31:0] Out
);
	always @(*) 
		case(sel) 
			2'b00: Out = {16'b0, inp0};
			2'b01: Out = {16'b0, inp0}; 
			2'b10: Out = {inp2, inp3};
			2'b11: Out = inp1;
			default: Out = inp1;
		endcase

endmodule