
`timescale 1ns/1ps

module tb_half_adder;

    reg A;
    reg B;

    wire SUM;
    wire CARRY;

    // Connect half adder to testbench
    half_adder dut(
        .A(A),
        .B(B),
        .SUM(SUM),
        .CARRY(CARRY)
    );

    initial begin

        $dumpfile("half_adder.vcd");
        $dumpvars(0, tb_half_adder);

        // Test 1
        A = 0; B = 0;
        #10;

        // Test 2
        A = 0; B = 1;
        #10;

        // Test 3
        A = 1; B = 0;
        #10;

        // Test 4
        A = 1; B = 1;
        #10;

        $finish;

    end

    initial begin
        $monitor(
            "Time=%0t ns | A=%b B=%b | SUM=%b CARRY=%b",
            $time, A, B, SUM, CARRY
        );
    end

endmodule
