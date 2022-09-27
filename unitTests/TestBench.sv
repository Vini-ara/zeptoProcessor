/*module programCounter(
	input clk,
	input rst,
	input [15:0] e,
	output[15:0] instruction
); 
	reg [15:0] pc;
	
	always_ff @ (posedge clk, posedge reset) begin
		if(rst) pc <= 0;
		else pc <= e;
	end
		
	assign instruction = pc;
endmodule

module rom(
	input [15:0] Addr,
	output [31:0] Instruction
);
	reg [31:0] memory [1023:0]; 
  
	initial $readmemh("program.txt", ROM); 
  
	assign Instruction = memory[Addr];

endmodule

module Ula(
		input logic [15:0] Ula_Ra, Ula_Rb, Ula_Imm,
		input logic [3:0] Ula_sel,
		output logic [15:0] Ula_Rd
);
	logic [7:0] Ula_result;
	
	
	always
	begin
		case(Ula_sel)
		4'b0000: Ula_result = Ula_Ra + Ula_Rb + Ula_Imm;
		4'b0001: Ula_result = Ula_Ra - Ula_Rb - Ula_Imm;
		4'b0010: Ula_result = Ula_Ra & Ula_Rb & Ula_Imm;
		4'b0011: Ula_result = Ula_Ra | Ula_Rb | Ula_Imm;
		4'b0100: Ula_result = Ula_Ra ^ Ula_Rb ^ Ula_Imm;
		default: Ula_result <= 1'b0;
		endcase
	end
	
	assign Ula_Rd = Ula_result;
	
endmodule

module Register(
input logic clk,
	input logic rst, we,
	input  logic [3:0] Addr_Ra, Addr_Rb, Addr_Rd,
	input logic [15:0] Write_Data,
	output logic [15:0] Saida_Ra, Saida_Rb
);
	logic [15:0] registers [15:0];
	
	always_ff @ (posedge clk) begin
		if(rst) registers <= '{default:0};
		else if(we) registers[Addr_Rd] <= Write_Data;	
	end
	
	assign Saida_Ra = Addr_Ra == 4'b0 ? 16'b0 : registers[Addr_Ra];
	assign Saida_Rb = Addr_Rb == 4'b0 ? 16'b0 : registers[Addr_Rb];

endmodule

module Comparador(
	input logic [15:0] Comp_Ra, Comp_Rb,
	output logic Comp_eq, Comp_diff, Comp_ge, Comp_lt
);
	assign Comp_eq = Comp_Ra == Comp_Rb ? 1'b1 : 1'b0;
	assign Comp_diff = Comp_Ra != Comp_Rb ? 1'b1 : 1'b0;
	assign Comp_ge = Comp_Ra >= Comp_Rb ? 1'b1 : 1'b0;
	assign Comp_lt = Comp_Ra < Comp_Rb ? 1'b1 : 1'b0;
endmodule

module ControllBlock(
	input logic [3:0] opcode,
	output logic WE, 
);

endmodule

module teste(
	input logic clk, reset,
);
	
	logic [15:0] pc;
	logic [15:0] pc_next;
	logic [31:0] instruction;
	logic [3:0] opcode;
	logic WE;
	logic [15: 0] Imm;
	
	initial pc <= 16'b0;
	
	always @(posedge clk, reset) begin
		if(reset) pc_next <= 0;
		else pc_next <= pc + 1;
	end

	programCounter programCnt(.clk(clk), .rst(reset), .e(pc_next), .instruction(pc));
	
	rom mem(.Addr(instruction), .Instruction(instruction));
	
	assign opcode = instruction[3:0];
	
	
	
endmodule */