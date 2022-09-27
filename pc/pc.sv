module programCounter(
	input logic clk,
	input logic rst,
	input logic [15:0] e,
	output logic [15:0] pCount
); 
	logic [15:0] pc;
	
	always_ff @ (posedge clk, posedge rst) begin
		if(rst) pc <= 0;
		else pc <= e;
	end
		
	assign pCount = pc;
endmodule