module Register(
	input clk,
	input rst,
	input we,
	input [3:0] Addr_Ra, Addr_Rb, Addr_Rd,
	input [15:0] Write_Data,
	output [15:0] Saida_Ra, Saida_Rb
);
	reg [15:0] registers [15:0];
	integer i;
	
	always @ (posedge clk) begin
		if(rst) begin
			for(i = 0; i < 16; i = i+1) begin
				registers[i] <= 0;
			end
		end else begin
			if(we) begin
				registers[Addr_Rd] <= Write_Data;
			end
		end
	end
	
	assign Addr_Ra = registers[Addr_Ra];
	assign Addr_Rb = registers[Addr_Rb];

endmodule