
`timescale 1ns/1ps

module tb_d_flipflop;

    reg clk, reset, D;
    wire Q;

    d_flipflop dut(
        .clk(clk),
        .reset(reset),
        .D(D),
        .Q(Q)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("d_flipflop.vcd");
        $dumpvars(0, tb_d_flipflop);

        clk = 0;
        reset = 1;
        D = 0;

        #12 reset = 0;
        #2  D = 1;
        #10 D = 0;
        #10 D = 1;
        #10 reset = 1;
        #5  reset = 0;

        #10 $finish;
    end

    initial begin
        $monitor(
            "Time=%0t | CLK=%b RESET=%b D=%b Q=%b",
            $time, clk, reset, D, Q
        );
    end

endmodule
