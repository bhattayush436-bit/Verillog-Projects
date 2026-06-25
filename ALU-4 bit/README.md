# 4-Bit ALU (Arithmetic Logic Unit) using Verilog

## 📌 Overview

This project implements a **4-bit Arithmetic Logic Unit (ALU)** in Verilog HDL. The ALU performs both arithmetic and logical operations based on a 4-bit select signal (`sel`). It is designed as a **combinational circuit** using an `always @(*)` block.

This project demonstrates fundamental RTL design concepts including arithmetic operations, logical operations, comparison operations, shift operations, and flag generation.

---

## ✨ Features

- 16 ALU Operations
- 4-bit Data Width
- Combinational Logic Design
- Carry Flag Generation
- Borrow Flag Generation
- Shift Operations
- Comparison Operations

---

## 📂 Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| A | 4-bit | First Operand |
| B | 4-bit | Second Operand |
| sel | 4-bit | Operation Select |

---

## 📂 Outputs

| Signal | Width | Description |
|---------|------:|-------------|
| result | 4-bit | ALU Output |
| carry | 1-bit | Carry Flag (Addition/Increment) |
| borrow | 1-bit | Borrow Flag (Subtraction/Decrement) |

---

## ⚙️ Supported Operations

| Select | Operation |
|:------:|-----------|
| 0000 | Bitwise AND |
| 0001 | Bitwise OR |
| 0010 | Bitwise XOR |
| 0011 | Bitwise XNOR |
| 0100 | Bitwise NAND |
| 0101 | Logical Right Shift (A >> 1) |
| 0110 | Logical Left Shift (A << 1) |
| 0111 | Bitwise NOT (A) |
| 1000 | Equality Comparison (A == B) |
| 1001 | Less Than Comparison (A < B) |
| 1010 | Greater Than Comparison (A > B) |
| 1011 | Increment (A + 1) |
| 1100 | Decrement (A - 1) |
| 1101 | Bitwise NOR |
| 1110 | Subtraction (A - B) |
| 1111 | Addition (A + B) |

---

## 🛠️ Design Details

- Language: **Verilog HDL**
- Design Style: **RTL (Register Transfer Level)**
- Logic Type: **Combinational**
- Sensitivity List: `always @(*)`

---

## 📊 Flags

### Carry Flag
Generated during:
- Addition
- Increment

### Borrow Flag
Generated during:
- Subtraction
- Decrement

---

## 📸 Simulation

The design can be simulated using:

- Xilinx Vivado
- ModelSim
- Icarus Verilog

The waveform verifies correct operation for all 16 ALU functions.

---

## 📁 Project Structure

```
ALU_4bit/
│── ALU_4_bit.v
│── ALU-4-bit-tb.v
│── waveform_ALU_4_bit.png
│── README.md
```

---

## 🎯 Learning Outcomes

This project demonstrates understanding of:

- RTL Design
- Combinational Logic
- Arithmetic Circuits
- Logical Operations
- Shift Operations
- Comparison Logic
- Carry and Borrow Flag Generation
- Verilog HDL Coding

---

## 🚀 Future Improvements

- 8-bit / 16-bit Parameterized ALU
- Overflow Flag
- Zero Flag
- Sign Flag
- Arithmetic Right Shift
- Rotate Left / Rotate Right Operations
- Barrel Shifter
- Signed Arithmetic Support

---

## 👨‍💻 Author

**Ayush Bhatt**

B.Tech Electronics & Communication Engineering

Aspiring RTL Design / VLSI Front-End Engineer
