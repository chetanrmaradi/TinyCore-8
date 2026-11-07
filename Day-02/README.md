# Day 2 – Sequential and Combinational Circuits

## Overview

Day 2 of TinyCore-8 focuses on understanding combinational and sequential digital circuits using Verilog HDL.

The circuits implemented are:

1. Full Adder
2. D Flip-Flop
3. 4-bit Register

Each circuit was designed, simulated using Icarus Verilog and verified using GTKWave.

---

## 1. Full Adder

### Theory

A Full Adder is a combinational circuit that adds three binary inputs: A, B and Carry-in (Cin).

It produces two outputs:
- **SUM:** Result of binary addition.
- **Cout:** Carry output.

### Boolean Expressions

- SUM = A XOR B XOR Cin
- Cout = (A AND B) OR (A AND Cin) OR (B AND Cin)

### Truth Table

| A | B | Cin | SUM | Cout |
|---|---|---|---|---|
| 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 | 0 |
| 0 | 1 | 0 | 1 | 0 |
| 0 | 1 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 |
| 1 | 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 1 | 1 |

### Verilog Files

- `full_adder.v` – Full Adder design.
- `tb_full_adder.v` – Testbench.
- `full_adder.vcd` – Simulation waveform.

---

## 2. D Flip-Flop

### Theory

A D Flip-Flop is a sequential circuit that stores one bit of data.

- **D:** Data input.
- **CLK:** Clock signal.
- **Q:** Stored output.
- **Reset:** Clears the output to 0.

The D Flip-Flop captures the input data at the rising edge of the clock. In this implementation, reset is asynchronous and active-high.

### Operation

| Condition | Output Q |
|---|---|
| Reset = 1 | 0 |
| Rising clock edge | Q = D |
| No rising clock edge | Holds previous value |

### Verilog Files

- `d_flipflop.v` – D Flip-Flop design.
- `tb_d_flipflop.v` – Testbench.
- `d_flipflop.vcd` – Simulation waveform.

---

## 3. 4-bit Register

### Theory

A 4-bit register stores four bits of binary data.

It is constructed using four D Flip-Flops with a common clock and reset.

The register captures the 4-bit input at every rising edge of the clock.

### Operation

| Input D | Output Q after rising edge |
|---|---|
| 1010 | 1010 |
| 1100 | 1100 |
| 0111 | 0111 |
| 1111 | 1111 |

When reset is activated, the output becomes `0000`.

### Verilog Files

- `register4.v` – 4-bit register design.
- `tb_register4.v` – Testbench.
- `register4.vcd` – Simulation waveform.

---

## Simulation Tools

The following tools were used:

- **Icarus Verilog:** Verilog compilation.
- **VVP:** Simulation execution.
- **GTKWave:** Waveform analysis.

### Verification

All three circuits were simulated successfully. Their outputs were checked against their expected behavior using GTKWave.

---

## Learning Outcomes

After completing Day 2, learners should understand:

- Binary addition using a Full Adder.
- Data storage using a D Flip-Flop.
- Clock-edge-triggered operation.
- How four D Flip-Flops form a 4-bit register.
- Verilog design and testbench simulation.

**Next:** Day 3 – Multiplexer and other combinational circuits.