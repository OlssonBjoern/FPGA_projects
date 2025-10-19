`timescale 1us/1ns
module tb_hex_7seg_decoder();

    //Testbench variables 
    reg [3:0] in;
    wire a, b, c, d, e, f, g;
    integer i;

    // Instatiation of DUT
    hex_7seg_decoder DEC_7SEG(
        .in(in),
        .o_a(a),
        .o_b(b),
        .o_c(c),
        .o_d(d),
        .o_e(e),
        .o_f(f),
        .o_g(g)
    );

    initial begin
        $monitor($time, "in = %d, seven_seg_decode = %7b", in, {a, b, c, d, e, f, g});
        #1; in = 0;
        for (i = 0; i<16 ; i = i+1 ) begin
            #1; in = i;
        end
        #1; $stop; // added to see the final change
    end
endmodule