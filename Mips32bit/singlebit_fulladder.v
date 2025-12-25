module singlebit_full_adder(

	// Ports going into the circuit from the outside
	input a,
	input b,
	input carry_in,
	output sum,
	output carry_out
);

	// Internal logic
	wire xor1_out, xor2_out;
	wire and1_out, and2_out;
	wire or1_out;
	
	// Creating instances of the gates
	xor2 U1 (.a(a), .b(b), .y(xor1_out));
	xor2 U2 (.a(xor1_out), .b(carry_in), .y(sum));
	and2 U3 (.a(a), .b(b), .y(and1_out));
	and2 U4 (.a(xor1_out), .b(carry_in), .y(and2_out));
	or2 u5 (.a(and2_out), .b(and1_out), .y(carry_out));	


endmodule
