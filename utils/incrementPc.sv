module incrementPc(
	input logic [15:0] pc,
	output logic [15:0] next_pc
);
	assign next_pc = pc + 1;
endmodule