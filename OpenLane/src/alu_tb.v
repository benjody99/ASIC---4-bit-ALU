`timescale 1ns/1ps

module alu_tb;
    reg clk;
    reg rst;
    reg [1:0] op;
    reg [3:0] a, b;
    wire [3:0] y;
    wire carry;

    // Instantiate the ALU
    alu uut (
        .clk(clk),
        .rst(rst),
        .op(op),
        .a(a),
        .b(b),
        .y(y),
        .carry(carry)
    );

    // Clock generation
    always #5 clk = ~clk;  // 10ns period

    initial begin
        // Dump signals for GTKWave
        $dumpfile("alu_tb.vcd");
        $dumpvars(0, alu_tb);

        // Init
        clk = 0;
        rst = 1; op = 2'b00; a = 4'd0; b = 4'd0;
        #10 rst = 0;

        // Test addition
        a = 4'd8; b = 4'd6; op = 2'b00;
        #20;

        // Test subtraction
        a = 4'd8; b = 4'd6; op = 2'b01;
        #20;

        // Test AND
        a = 4'd8; b = 4'd6; op = 2'b10;
        #20;

        // Test OR
        a = 4'd8; b = 4'd6; op = 2'b11;
        #20;

        $finish;
    end
endmodule

