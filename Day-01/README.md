# Day 1 — Digital Logic Foundations

## Learning goals

Understand basic Boolean logic and build a half adder using Verilog HDL.

## Circuits

| Circuit | Main idea | Verification |
|---|---|---|
| AND gate | Output is 1 only when both inputs are 1 | Test all 4 input combinations |
| OR gate | Output is 1 when at least one input is 1 | Test all 4 input combinations |
| NOT gate | Inverts a single input | Test both input values |
| XOR gate | Output is 1 when inputs differ | Test all 4 input combinations |
| Half adder | Adds two 1-bit values | Test all 4 input combinations |

## Run an example

From this directory:

```powershell
iverilog -o and_gate_sim and_gate.v tb_and_gate.v
vvp and_gate_sim
gtkwave and_gate.vcd
```

Repeat with the matching design and testbench filenames for the other circuits.

## Half-adder logic

- Sum: `A XOR B`
- Carry: `A AND B`

The testbench checks all possible input combinations. Compare the printed output and waveform against the half-adder truth table.

## Student exercise

1. Write the truth table for each circuit before running the simulation.
2. Predict the output for every input combination.
3. Run the testbench and compare the actual output with your prediction.
4. Explain in your own words why the half adder produces a carry for input `A=1, B=1`.

## Completion

The five Day 1 circuits have been implemented and their simulations were reviewed during project development. Add or update screenshots as the public learning documentation is expanded.
