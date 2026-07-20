/*
 * Copyright (c) 2026 nguyenvandongsn97-sys
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_nguyenvandongsn97_sys_full_adder (
    input  wire [7:0] ui_in,    // Dedicated inputs[cite: 2]
    output wire [7:0] uo_out,   // Dedicated outputs[cite: 2]

    input  wire [7:0] uio_in,   // Bidirectional input path[cite: 2]
    output wire [7:0] uio_out,  // Bidirectional output path[cite: 2]
    output wire [7:0] uio_oe,   // Bidirectional output enable[cite: 2]

    input  wire ena,            // Enabled when the project is selected[cite: 2]
    input  wire clk,            // Unused: combinational design[cite: 2]
    input  wire rst_n           // Unused: combinational design[cite: 2]
);

    wire a;[cite: 2]
    wire b;[cite: 2]
    wire cin;[cite: 2]
    wire sum_bit;[cite: 2]
    wire cout_bit;[cite: 2]

    assign a   = ui_in[0];[cite: 2]
    assign b   = ui_in[1];[cite: 2]
    assign cin = ui_in[2];[cite: 2]

    // One-bit full-adder equations
    assign sum_bit  = a ^ b ^ cin;[cite: 2]
    assign cout_bit = (a & b) | (a & cin) | (b & cin);[cite: 2]

    // uo_out[0] = Sum[cite: 2]
    // uo_out[1] = Cout[cite: 2]
    assign uo_out = {6'b000000, cout_bit, sum_bit};[cite: 2]

    // Bidirectional pins are not used
    assign uio_out = 8'b00000000;[cite: 2]
    assign uio_oe  = 8'b00000000;[cite: 2]

    // Reference all unused inputs to avoid lint warnings
    wire _unused = &{[cite: 2]
        ena,[cite: 2]
        clk,[cite: 2]
        rst_n,[cite: 2]
        ui_in[7:3],[cite: 2]
        uio_in,[cite: 2]
        1'b0[cite: 2]
    };[cite: 2]

endmodule

`default_nettype wire
