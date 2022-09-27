module ControlUnit(
	input logic [3:0] opcode,
	output logic [3:0] Ula_opcode,
	output logic we, beq, bne, bge, blt, jmp, jmpr
);
	always_comb 
	begin
	case(opcode)
		4'b0000: 
		begin
			we = 1'b1;
			beq = 1'b0;
			bne = 1'b0;
			bge = 1'b0;
			blt = 1'b0;
			Ula_opcode = 4'b0000;
			jmp = 1'b0;
			jmpr = 1'b0;
		end
		4'b0001:
		begin
			we = 1'b1;
			beq = 1'b0;
			bne = 1'b0;
			bge = 1'b0;
			blt = 1'b0;
			Ula_opcode = 4'b0001;
			jmp = 1'b0;
			jmpr = 1'b0;
		end
		4'b0010:
		begin
			we = 1'b1;
			beq = 1'b0;
			bne = 1'b0;
			bge = 1'b0;
			blt = 1'b0;
			Ula_opcode = 4'b0010;
			jmp = 1'b0;
			jmpr = 1'b0;
		end
		4'b0011:
		begin 
			we = 1'b1;
			beq = 1'b0;
			bne = 1'b0;
			bge = 1'b0;
			blt = 1'b0;
			Ula_opcode = 4'b0011;
			jmp = 1'b0;
			jmpr = 1'b0;
		end
		4'b0100:
		begin 
			we = 1'b1;
			beq = 1'b0;
			bne = 1'b0;
			bge = 1'b0;
			blt = 1'b0;
			Ula_opcode = 4'b0100;
			jmp = 1'b0;
			jmpr = 1'b0;
		end
		4'b0101:
		begin 
			we = 1'b0;
			beq = 1'b1;
			bne = 1'b0;
			bge = 1'b0;
			blt = 1'b0;
			Ula_opcode = 4'b0000;
			jmp = 1'b0;
			jmpr = 1'b0;
		end
		4'b0110:
		begin 
			we = 1'b0;
			beq = 1'b0;
			bne = 1'b1;
			bge = 1'b0;
			blt = 1'b0;
			Ula_opcode = 4'b0000;
			jmp = 1'b0;
			jmpr = 1'b0;
		end
		4'b0111:
		begin 
			we = 1'b0;
			beq = 1'b0;
			bne = 1'b0;
			bge = 1'b1;
			blt = 1'b0;
			Ula_opcode = 4'b0000;
			jmp = 1'b0;
			jmpr = 1'b0;
		end
		4'b1001:
		begin 
			we = 1'b0;
			beq = 1'b0;
			bne = 1'b0;
			bge = 1'b0;
			blt = 1'b1;
			Ula_opcode = 4'b0000;
			jmp = 1'b0;
			jmpr = 1'b0;
		end
		4'b1011:
		begin 
			we = 1'b1;
			beq = 1'b0;
			bne = 1'b0;
			bge = 1'b0;
			blt = 1'b0;
			Ula_opcode = 4'b0000;
			jmp = 1'b1;
			jmpr = 1'b0;
		end
		4'b1100:
		begin 
			we = 1'b1;
			beq = 1'b0;
			bne = 1'b0;
			bge = 1'b0;
			blt = 1'b0;
			Ula_opcode = 4'b0000;
			jmp = 1'b1;
			jmpr = 1'b1;
		end
		default: begin
			we = 1'b1;
			beq = 1'b0;
			bne = 1'b0;
			bge = 1'b0;
			blt = 1'b0;
			Ula_opcode = 4'b0000;
			jmp = 1'b0;
			jmpr = 1'b0;
		end
	endcase
	end


endmodule