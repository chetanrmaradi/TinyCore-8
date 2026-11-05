
`timescale 1ns/1ps

module tb_or_gate;

    reg A;
    reg B;
    wire Y;

    or_gate dut(A, B, Y);

    initial begin

        $dumpfile("or_gate.vcd");
        $dumpvars(0, tb_or_gate);

        A = 0; B = 0;
        #10;

        A = 0; B = 1;
        #10;

        A = 1; B = 0;
        #10;

        A = 1; B = 1;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | A=%b B=%b Y=%b",
                  $time, A, B, Y);
    end

endmodule
