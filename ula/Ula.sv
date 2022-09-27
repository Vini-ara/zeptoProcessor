module Ula(
		input [15:0] Ula_Ra, Ula_Rb, Ula_Imm,
		input [3:0] Ula_sel,
		output [15:0] Ula_Rd
);
	reg [15:0] Ula_result;
	
	always_comb
	begin
		case(Ula_sel)
		4'b0000: Ula_result = Ula_Ra + Ula_Rb + Ula_Imm;
		4'b0001: Ula_result = Ula_Ra - Ula_Rb - Ula_Imm;
		4'b0010: Ula_result = Ula_Ra & Ula_Rb & Ula_Imm;
		4'b0011: Ula_result = Ula_Ra | Ula_Rb | Ula_Imm;
		4'b0100: Ula_result = Ula_Ra ^ Ula_Rb ^ Ula_Imm;
		default: Ula_result = 8'b0;
		endcase
	end
	
	assign Ula_Rd = Ula_result;
	
endmodule