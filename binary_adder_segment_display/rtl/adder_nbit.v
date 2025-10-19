module adder_nbit 
    //Parameter section
    #( parameter N = 3)
    //Ports section
    (
        input [N-1:0] a,
        input [N-1:0] b,
        // Reg because it is going on the side of an always @ procedure
        output reg [N:0] sum
    );

    // Behavioral code means
    // Whenever a or b changes the update the sum of a + b
    always @(*) begin
        sum[N:0] = a[N-1:0] + b[N-1:0];
        // Taking the sum of a + b
    end
    
endmodule