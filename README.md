# TinyCore-8 — 8-Bit RISC Processor Design

<p align="center">
  <strong>Learn Digital Design. Build a Processor.</strong>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/HDL-Verilog-blue" />
  <img src="https://img.shields.io/badge/Simulation-Icarus%20Verilog-orange" />
  <img src="https://img.shields.io/badge/Waveform-GTKWave-green" />
  <img src="https://img.shields.io/badge/Status-In%20Progress-yellow" />
</p>

## Overview

**TinyCore-8** is an open-source, beginner-friendly hardware design learning project. Its long-term engineering objective is to design, implement, simulate, and verify an 8-bit RISC (Reduced Instruction Set Computer) processor using Verilog HDL.

The repository is intended to serve two purposes: a practical processor-design portfolio and a reproducible learning resource for students studying digital electronics, Verilog HDL, RTL design, and computer architecture.

## Getting started

- [Windows installation and simulation guide](Getting-Started/Installation-Windows.md)
- [Linux installation guide](Getting-Started/Installation-Linux.md)

The examples use **Icarus Verilog** for compilation/simulation and **GTKWave** for waveform inspection.

## Learning path

| Stage | Topics | Status |
|---|---|---|
| Day 1 | Logic gates and half adder | Completed |
| Day 2 | Full adder, D flip-flop, and register fundamentals | In progress |
| Foundations | Multiplexers, decoders, counters, and arithmetic circuits | Planned |
| Processor blocks | ALU, register file, program counter, and memories | Planned |
| CPU architecture | Instruction decoder, control unit, and datapath | Planned |
| Integration | Processor execution, verification, and synthesis | Planned |

See [Day 1 learning notes](Day-01/README.md) for circuit summaries and exercises.

## Proposed TinyCore-8 architecture

The planned processor is an 8-bit data-path design with a 16-bit instruction format. The architecture is a design target and will be refined as implementation decisions are verified.

| Component | Planned purpose |
|---|---|
| ALU | Arithmetic and logical operations |
| Register file | Eight 8-bit general-purpose registers |
| Program counter | Address of the next instruction |
| Instruction memory | Stores program instructions |
| Data memory | Stores data |
| Control unit | Decodes instructions and generates control signals |
| Flags | Records selected ALU status results |

## Planned instruction set

| Instruction | Function |
|---|---|
| LDI | Load immediate value |
| ADD / SUB | Addition / subtraction |
| AND / OR / XOR | Bitwise logic |
| LOAD / STORE | Read / write data memory |
| JMP | Unconditional jump |
| JZ | Jump if zero |
| HALT | Stop processor execution |

Instruction encodings and exact semantics will be documented when the architecture is implemented.

## Tools

- **Verilog HDL** — hardware description and RTL design
- **Icarus Verilog** — compilation and simulation
- **GTKWave** — waveform analysis
- **Visual Studio Code** — development environment
- **Yosys** — planned RTL synthesis and hardware analysis
- **Git and GitHub** — version control and collaboration

## Repository map

```text
TinyCore-8/
├── README.md
├── .gitignore
├── LICENSE
├── CONTRIBUTING.md
├── Getting-Started/
│   ├── Installation-Windows.md
│   └── Installation-Linux.md
├── Day-01/
│   └── README.md
└── Day-02/
    └── Verilog modules and testbenches
```

The circuit folders will be organised into topic-based subfolders as the learning material grows.

## Simulation workflow

From the folder containing a design and its testbench:

```powershell
iverilog -o circuit_sim circuit.v tb_circuit.v
vvp circuit_sim
gtkwave circuit.vcd
```

Replace the example filenames with the circuit and testbench being simulated. Generated executables are local build outputs and should not be committed.

## How each lesson is documented

Where applicable, each circuit lesson aims to include:
1. Beginner-friendly theory and purpose.
2. Truth table and logic equations.
3. Verilog design source.
4. A testbench covering relevant input cases.
5. Reproduction commands and simulation evidence.
6. Exercises and known limitations.

A module should only be described as verified when its testbench has been run and its observed behaviour matches the expected result.

## Contributing

Student contributions, corrections, and documentation improvements are welcome. Read [CONTRIBUTING.md](CONTRIBUTING.md) before submitting changes.

## License

This project is licensed under the [MIT License](LICENSE).

## Author

**Chetankumar R Maradi**  
Electronics and Communication Engineering  
Vidyavardhaka College of Engineering, Mysuru

- GitHub: [@chetanrmaradi](https://github.com/chetanrmaradi)
- LinkedIn: [Chetankumar R Maradi](https://www.linkedin.com/in/chetankumar-r-maradi-2109b6352/)

---

<p align="center"><strong>Learning by Building. Designing by Understanding.</strong></p>
