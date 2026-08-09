Traffic Light Controller using Verilog HDL

Introduction

This project implements a simple Traffic Light Controller using Verilog HDL.

The controller is designed using a Finite State Machine (FSM). It controls three traffic light signals:

- Red
- Green
- Yellow

The controller continuously changes the traffic light in the following sequence:

RED → GREEN → YELLOW → RED

Objectives

The main objectives of this project are:

- To design a traffic light controller using Verilog HDL.
- To understand Finite State Machine (FSM) design.
- To implement sequential and combinational logic.
- To create a Verilog testbench.
- To simulate and verify the controller.

Inputs

Input| Description
"clk"| Clock signal
"reset"| Resets the controller to RED state

Outputs

Output| Description
"red"| Red traffic light
"yellow"| Yellow traffic light
"green"| Green traffic light

Traffic Light States

State| Red| Yellow| Green
RED| 1| 0| 0
GREEN| 0| 0| 1
YELLOW| 0| 1| 0

Only one traffic light is ON at a time.

State Diagram

                ┌─────────────┐
                │             │
                ▼             │
             ┌───────┐        │
             │  RED  │        │
             └───┬───┘        │
                 │            │
                 ▼            │
             ┌───────┐        │
             │ GREEN │        │
             └───┬───┘        │
                 │            │
                 ▼            │
             ┌────────┐       │
             │ YELLOW │───────┘
             └────────┘

Working Principle

1. Initially, the controller is reset.
2. During reset, the RED light is ON.
3. When reset is released, the controller moves to the GREEN state.
4. After the GREEN state, it moves to the YELLOW state.
5. After YELLOW, it returns to RED.
6. This sequence repeats continuously.
7. The FSM changes state at every rising edge of the clock.

Files in the Project

traffic-light-controller/
│
├── README.md
├── traffic_light_controller.v
├── traffic_light_controller_tb.v
└── simulation/
    └── waveform.png

"traffic_light_controller.v"

Contains the main Verilog design of the traffic light controller.

"traffic_light_controller_tb.v"

Contains the testbench used to verify the design.

"simulation/waveform.png"

Contains the simulation waveform showing the RED, GREEN and YELLOW signals.

Simulation

The project can be simulated using:

- Icarus Verilog
- GTKWave
- ModelSim
- Vivado

Icarus Verilog Commands

Compile the design and testbench:

iverilog -o traffic_light_sim traffic_light_controller.v traffic_light_controller_tb.v

Run the simulation:

vvp traffic_light_sim

Open the waveform:

gtkwave traffic_light.vcd

Expected Result

The simulation should show the following repeating sequence:

RED → GREEN → YELLOW → RED → GREEN → YELLOW

At any particular time, only one of the three output signals should be HIGH.

Applications

Traffic light controllers are used in:

- Road intersections
- Highway junctions
- Pedestrian crossings
- Railway crossing systems
- Smart traffic management systems

Advantages

- Simple and easy to implement.
- Uses FSM-based design.
- Easy to simulate and verify.
- Can be extended for real-world traffic systems.
- Suitable for FPGA implementation.

Future Improvements

The project can be extended by adding:

- Pedestrian crossing control
- Emergency vehicle priority
- Vehicle sensors
- Two-road intersection control
- Countdown timer
- Seven-segment display
- Automatic traffic density detection

Conclusion

The Traffic Light Controller demonstrates the implementation of a real-world digital control system using Verilog HDL and Finite State Machine design.

The project helps in understanding state transitions, sequential logic, combinational logic, testbench development, and digital system simulation.
