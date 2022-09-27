module Comparador(
	input [15:0] Comp_Ra, Comp_Rb,
	output Comp_eq, Comp_diff, Comp_ge, Comp_lt
);
	assign Comp_eq = Comp_Ra == Comp_Rb ? 1'b1 : 1'b0;
	assign Comp_diff = Comp_Ra != Comp_Rb ? 1'b1 : 1'b0;
	assign Comp_ge = Comp_Ra >= Comp_Rb ? 1'b1 : 1'b0;
	assign Comp_lt = Comp_Ra < Comp_Rb ? 1'b1 : 1'b0;
endmodule