module rom(
	input [15:0] Addr,
	output [31:0] Instruction
);
	reg [31:0] memory [1023:0]; 
  
	initial $readmemh("div.txt", memory); 
  
	assign Instruction = memory[Addr];

endmodule
