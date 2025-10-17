`timescale 1us/1ns
module tb_mux_to_LEDs();

    // Testbench variables 
    parameter BUS_WIDTH = 4;
    reg [BUS_WIDTH-1:0] i_a;
    reg [BUS_WIDTH-1:0] i_b;
    reg i_sel;
    wire [BUS_WIDTH-1:0] o_y;
    integer i;

    // Instantiate the DUT
    mux_to_LEDs
    #(.N(BUS_WIDTH))
        MUX0
    (
        .i_a(i_a),
        .i_b(i_b),
        .i_sel(i_sel),
        .o_y(o_y)
    );

    // Test loop
    initial begin
        // $monitor checks the variables whenever a change occur
        $monitor($time, "a = %d, b = %d, sel = %d, y = %d", i_a, i_b, i_sel, o_y);
        #1; i_sel = 0; i_a = 0; i_b = ~i_a;
        for (i = 0; i<8; i = i+1) begin
            #1; i_sel = ~i_sel; i_a = $urandom; i_b = $urandom;            
        end
    end

endmodule