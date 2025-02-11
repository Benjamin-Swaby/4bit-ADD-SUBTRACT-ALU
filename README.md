# 4bit-ADD-SUBTRACT-ALU
Very simple 4bit ALU from first principles.

## About:
This project consists of all the core components needed to form a simple 4bit Integer ALU. The ALU has two operations ADD(1) and SUBTRACT(0).

## Running:
- install iverilog and gnu make,
- run 'make run'

## Test Bench Output:

```
At time                    0, A = 0000, B = 0000, op = 0, result = 0000, carry_out = 0
At time                   10, A = 0011, B = 0001, op = 0, result = 0100, carry_out = 0
At time                   20, A = 0101, B = 0011, op = 0, result = 1000, carry_out = 1
At time                   30, A = 0100, B = 0010, op = 1, result = 1010, carry_out = 0
At time                   40, A = 0110, B = 0011, op = 1, result = 1011, carry_out = 0
```

