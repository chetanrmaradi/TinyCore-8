
`timescale 1ns/1ps

module tb_not_gate;

    reg A;
    wire Y;

    not_gate dut(A, Y);

    initial begin

        $dumpfile("not_gate.vcd");
        $dumpvars(0, tb_not_gate);

        A = 0;
        #10;

        A = 1;
        #10;

        $finish;

    end

    initial begin
        $monitor("Time=%0t | A=%b Y=%b",
                  $time, A, Y);
    end

endmodule
