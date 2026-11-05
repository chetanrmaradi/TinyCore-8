
module full_adder(
    input A,
    input B,
    input Cin,
    output SUM,
    output Cout
);

    // Calculate the sum
    assign SUM = A ^ B ^ Cin;

    // Calculate the carry output
    assign Cout = (A & B) |
                  (A & Cin) |
                  (B & Cin);

endmodule
