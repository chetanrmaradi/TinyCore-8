
module tb_register4;

reg clk;
reg reset;
reg [3:0] D;
wire [3:0] Q;

register4 uut (
    .clk(clk),
    .reset(reset),
    .D(D),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    D = 4'b0000;

    #12 reset = 0;

    #1 D = 4'b1010;
    #10 D = 4'b1100;
    #10 D = 4'b0111;
    #10 D = 4'b1111;

    #10 $finish;
end

initial begin
    $dumpfile("register4.vcd");
    $dumpvars(0, tb_register4);
end

endmodule
