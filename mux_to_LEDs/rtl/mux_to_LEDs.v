module mux_to_LEDs

    //Parameters
    #( parameter N = 4)
    // Ports section
    (
        input [N-1:0] i_a ,
        input [N-1:0] i_b ,
        input  i_sel ,
        output [N-1:0] o_y
    );
    // y = b if i_sel is 1 otherwise it is i_a
    // continuous assignment
    assign o_y = i_sel ? i_b : i_a;


endmodule