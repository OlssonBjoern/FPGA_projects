module rca_alu (

	input wire [31:0] a,
	input wire [31:0] b,
	input wire cin,
	output wire [31:0] sum,
	output wire cout

);
	// Set up carry chain from one RCA to the next to not assign constants.
	wire [32:0] carry_chain;
	assign carry_chain[0] = cin;

endmodule