# Booth Multiplier (4-bit)

This module implements a 4-bit signed Booth multiplier using SystemVerilog. It multiplies two 4-bit inputs in two's complement representation and produces an 8-bit signed output.

## Files

- `Booth_Multiplier.sv` – RTL implementation of the Booth multiplier  
- `Booth_Multiplier_tb.sv` – Testbench for simulation

## Description

Booth's algorithm is a technique for multiplying signed binary numbers in two's complement. It processes two bits of the multiplier (including an appended 0) in each cycle to decide whether to add, subtract, or do nothing with the multiplicand.

### Operation Rules:
- `00` → No operation  
- `01` → Add multiplicand  
- `10` → Subtract multiplicand  
- `11` → No operation  
<img width="966" height="1024" alt="image" src="https://github.com/user-attachments/assets/5f427026-01a1-4109-b1b6-76ae5e04b216" />

After each operation, an arithmetic right shift is performed. The implementation completes the multiplication in 4 clock cycles.

## Test Case

- A = `0111` (decimal 7)  
- B = `0011` (decimal 3)  
- AXB = `00010101` (decimal 21)
<img width="2910" height="284" alt="image" src="https://github.com/user-attachments/assets/d7f8070a-957e-4671-9f2f-b70aefd6ce75" />

credits:for the image of booth multiplier
https://vlsiverify.com/verilog/verilog-codes/booth-multiplier/ 




