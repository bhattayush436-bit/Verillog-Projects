# UART Transmitter using Verilog HDL

## 📖 Overview

This project implements an **8-bit UART (Universal Asynchronous Receiver Transmitter) Transmitter** using Verilog HDL. The transmitter converts 8-bit parallel input data into serial output according to the UART communication protocol.

The design is based on a **Finite State Machine (FSM)** and uses a **shift register**, **baud counter**, and **bit counter** to control data transmission.

---

## ✨ Features

- 8-bit UART Transmission
- FSM-Based Design
- LSB First Data Transmission
- Start Bit Generation
- Stop Bit Generation
- Busy Signal
- Shift Register Implementation
- Baud Counter for Bit Timing
- Synthesizable RTL Design

---

## 🛠️ Tools Used

- Verilog HDL
- Xilinx Vivado
- Vivado Simulator

---

## 📌 UART Frame Format

```
| Idle | Start | D0 | D1 | D2 | D3 | D4 | D5 | D6 | D7 | Stop |
|  1   |   0   |           8 Data Bits (LSB First)          | 1 |
```

---

## 📂 Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| `clk` | 1 | System Clock |
| `rst` | 1 | Active-High Reset |
| `tx_start` | 1 | Starts UART Transmission |
| `data_in` | 8 | Parallel Input Data |

---

## 📂 Outputs

| Signal | Width | Description |
|---------|------:|-------------|
| `tx` | 1 | Serial Output |
| `busy` | 1 | High During Transmission |

---

## 🏗️ Design Architecture

The UART transmitter is implemented using four FSM states:

### IDLE
- Waits for `tx_start`
- Keeps `tx` high
- Loads input data into the shift register

### START
- Transmits the start bit (`0`)
- Waits for one baud period

### DATA
- Transmits 8-bit data serially (LSB first)
- Shifts the register after each baud period
- Increments the bit counter

### STOP
- Transmits the stop bit (`1`)
- Returns to the IDLE state after one baud period

---

## 🔄 State Transition

```
          +-------+
          | IDLE  |
          +-------+
              |
         tx_start
              |
              v
          +--------+
          | START  |
          +--------+
              |
              v
          +-------+
          | DATA  |
          +-------+
              |
      8 Data Bits Sent
              |
              v
          +-------+
          | STOP  |
          +-------+
              |
              v
          +-------+
          | IDLE  |
          +-------+
```

---

## ⚙️ Internal Components

- Finite State Machine (FSM)
- Shift Register
- Baud Counter
- Bit Counter

---

## 🧪 Simulation

The design was simulated in **Xilinx Vivado**.

Simulation verifies:

- Correct FSM transitions
- Start bit generation
- Serial transmission of 8-bit data
- Stop bit generation
- Proper shift register operation
- Correct busy signal timing

---

## 📸 Simulation Waveform

> **Add your Vivado waveform screenshot here showing:**
> - Start Bit
> - Data Bits (LSB First)
> - Stop Bit
> - FSM State Transitions

---

## 📚 Concepts Demonstrated

- Verilog HDL
- RTL Design
- Finite State Machine (FSM)
- Shift Registers
- Counters
- UART Protocol
- Serial Communication
- Digital Design
- Functional Simulation

---

## 🚀 Future Improvements

- UART Receiver
- Configurable Baud Rate
- Even/Odd Parity Support
- Configurable Stop Bits
- FIFO Integration
- Full UART Transceiver

---

## 📁 Project Structure

```
UART-Transmitter/
│── UART_transmitter.v
│── tb.v
│── README.md
└── waverform_UART_tx.png
```

---

## 👨‍💻 Author

**Ayush Bhatt**

B.Tech Electronics & Communication Engineering

Aspiring **RTL Design / VLSI Front-End Engineer**
