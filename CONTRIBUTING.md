# Contributing to TinyCore-8

Thank you for your interest in improving TinyCore-8. The goal is to make this repository a reliable, beginner-friendly resource for digital electronics, Verilog HDL, and processor design.

## Ways to contribute

- Fix an error in an explanation or truth table.
- Improve beginner documentation.
- Add a Verilog module with a matching testbench.
- Add meaningful test cases and simulation evidence.
- Improve installation instructions.
- Report a reproducible bug or unclear instruction.

## Before submitting a change

1. Read the relevant circuit explanation.
2. Keep module and signal names consistent with the existing project.
3. Include a testbench for new or changed hardware modules.
4. Simulate the design with Icarus Verilog.
5. Check the output against the expected truth table or specification.
6. Include concise instructions to reproduce the simulation.

## Verilog contribution format

For a new circuit, provide:

- Design source file (`.v`).
- Testbench (`tb_*.v`).
- Short explanation of the circuit.
- Expected behaviour or truth table.
- Simulation command and observed result.

## Repository hygiene

- Do not commit generated simulation executables such as `*_sim`, `.out`, or `.vvp`.
- Keep useful VCD waveforms and screenshots only when they help explain or reproduce a result.
- Do not claim a module is verified unless its testbench has been run successfully.
- Do not add unrelated binaries, personal files, credentials, or API keys.

## Pull requests

Use a clear title and describe:

- What changed.
- Why the change is useful.
- How it was tested.
- Any known limitations.

For substantial changes, open an issue or discussion first so the design approach can be agreed upon.

All contributions are subject to the repository's MIT License.
