
module half_adder(
    input A,
    input B,
    output SUM,
    output CARRY
);

    // XOR produces SUM
    assign SUM = A ^ B;

    // AND produces CARRY
    assign CARRY = A & B;

endmodule
