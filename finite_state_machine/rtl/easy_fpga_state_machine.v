module easy_fpga_state_machine 

    # ( parameter CLOCK_FREQ = 32'd50_000_000 // CLK frequency of 50 kHz
    )

    // Ports
    ( input clk,
    input rst_n,
    output [2:0] o_state,
    output [6:0] o_HEX0,
    output [6:0] o_HEX1,
    output [6:0] o_HEX2,
    output [6:0] o_HEX3
    );

    // Encode FSM states
    localparam OFF_state = 3'd0;
    localparam EASY_state= OFF_state + 1'b1;
    localparam FPGA_state = EASY_state + 1'b1;
    localparam EASY_SHIFT_state= FPGA_state + 1'b1;
    localparam FPGA_SHIFT_state = EASY_SHIFT_state + 1'b1;

endmodule