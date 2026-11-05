# TinyCore-8 — 8-Bit RISC Processor Design

<p align="center">
  <strong>A 90-Day Digital Design and Computer Architecture Project</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/HDL-Verilog-blue" />
  <img src="https://img.shields.io/badge/Simulation-Icarus%20Verilog-orange" />
  <img src="https://img.shields.io/badge/Waveform-GTKWave-green" />
  <img src="https://img.shields.io/badge/Status-In%20Progress-yellow" />
</p>

## Overview

**TinyCore-8** is a self-directed hardware design project focused on designing, implementing, simulating, and verifying an 8-bit RISC (Reduced Instruction Set Computer) processor using Verilog HDL.

The project follows a structured 90-day development roadmap, progressing from fundamental digital logic circuits to a complete processor architecture.

The primary objective is to gain practical experience in digital electronics, RTL design, sequential logic, computer architecture, and hardware verification.

## Project Objectives

- Understand and implement fundamental digital logic circuits.
- Develop combinational and sequential circuits using Verilog HDL.
- Design an Arithmetic Logic Unit (ALU).
- Implement registers, program counter, and memory units.
- Develop an instruction decoder and control unit.
- Integrate individual components into an 8-bit RISC processor.
- Simulate and verify hardware functionality using testbenches.
- Explore RTL synthesis and hardware design workflows.

## Proposed Processor Architecture

The planned TinyCore-8 processor will contain:

| Component | Description |
|---|---|
| ALU | Performs arithmetic and logical operations |
| Register File | Eight 8-bit general-purpose registers |
| Program Counter | Stores the address of the next instruction |
| Instruction Memory | Stores processor instructions |
| Data Memory | Stores and retrieves data |
| Control Unit | Decodes instructions and generates control signals |
| Flags | Stores relevant ALU status information |

**Proposed architecture:** 8-bit data path with 16-bit instruction format.

## Planned Instruction Set

| Instruction | Function |
|---|---|
| LDI | Load immediate value |
| ADD | Addition |
| SUB | Subtraction |
| AND | Bitwise AND |
| OR | Bitwise OR |
| XOR | Bitwise XOR |
| LOAD | Load data from memory |
| STORE | Store data in memory |
| JMP | Unconditional jump |
| JZ | Jump if zero |
| HALT | Stop processor execution |

*Instruction encoding and implementation details will be documented as development progresses.*

## Development Roadmap

| Phase | Planned Work | Status |
|---|---|---|
| Day 1 | Basic logic gates and half adder | Completed |
| Day 2 | Full adder and sequential logic | In Progress |
| Days 3–15 | Combinational and arithmetic circuits | Planned |
| Days 16–30 | Registers, counters and ALU | Planned |
| Days 31–45 | Processor datapath and memory | Planned |
| Days 46–60 | Instruction decoder and control unit | Planned |
| Days 61–75 | Processor integration | Planned |
| Days 76–90 | Verification, debugging and synthesis | Planned |

## Tools and Technologies

- **Verilog HDL** — Hardware description and RTL design.
- **Icarus Verilog** — HDL compilation and simulation.
- **GTKWave** — Digital waveform analysis.
- **Visual Studio Code** — Development environment.
- **Yosys** — Planned RTL synthesis and hardware analysis.
- **Git and GitHub** — Version control and project documentation.

## Repository Structure

```text
TinyCore-8/
│
├── README.md
│
├── Day-01/
│   ├── and_gate.v
│   ├── tb_and_gate.v
│   ├── or_gate.v
│   ├── tb_or_gate.v
│   ├── not_gate.v
│   ├── tb_not_gate.v
│   ├── xor_gate.v
│   ├── tb_xor_gate.v
│   ├── half_adder.v
│   └── tb_half_adder.v
│
├── Day-02/
│   ├── full_adder.v
│   ├── tb_full_adder.v
│   └── ...
│
└── Documentation/
```

*The repository structure will expand as new modules are implemented.*

## Simulation Workflow

The project uses Icarus Verilog for simulation and GTKWave for waveform inspection.

Example commands:

```powershell
iverilog -o simulation module.v testbench.v
vvp simulation
gtkwave dump.vcd
```

Each module is tested independently using a dedicated testbench before integration into larger systems.

## Learning Outcomes

Through this project, the intended learning outcomes include:

- RTL coding and hardware modelling.
- Combinational and sequential logic design.
- Timing and clock-edge behaviour.
- Functional verification using testbenches.
- Digital system integration.
- Fundamentals of processor architecture.
- Introduction to synthesis and hardware implementation.

## Project Progress

Development is ongoing. Individual modules, simulation results, testbenches, and documentation will be added incrementally.

## Author

**Chetankumar R Maradi**

Electronics and Communication Engineering  
Vidyavardhaka College of Engineering, Mysuru

- GitHub: [@chetanrmaradi](https://github.com/chetanrmaradi)
- LinkedIn: [Chetankumar R Maradi](https://www.linkedin.com/in/chetankumar-r-maradi-2109b6352/)

---

<p align="center">
  <strong>Learning by Building. Designing by Understanding.</strong>
</p>
