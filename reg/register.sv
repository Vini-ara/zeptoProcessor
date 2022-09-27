module regbank(
	input	logic	Clk, Rst, We, 
   input	logic	[3:0] Addr_Ra, Addr_Rb, Addr_Rd,
	input logic [15:0] W_Data,
	output logic [15:0] Ra_out, Rb_out
); 
  
	logic [15:0] bancoreg [15:0];

	always_ff @(posedge Clk) begin
		if(Rst) bancoreg <= '{default:0}; 
		else
			if (We) bancoreg[Addr_Rd] <= W_Data;
	end

	assign Ra_out = Addr_Ra == 4'b0 ? 16'b0 : bancoreg[Addr_Ra];
	assign Rb_out = Addr_Rb == 4'b0 ? 16'b0 : bancoreg[Addr_Rb];

endmodule