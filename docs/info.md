## How it works

This project implements a combinational one-bit full adder.[cite: 1]

The three input bits are:[cite: 1]

- `ui_in[0]`: A[cite: 1]
- `ui_in[1]`: B[cite: 1]
- `ui_in[2]`: Cin[cite: 1]

The two output bits are:[cite: 1]

- `uo_out[0]`: Sum[cite: 1]
- `uo_out[1]`: Cout[cite: 1]

The logic equations are:[cite: 1]

`Sum = A XOR B XOR Cin`[cite: 1]

`Cout = (A AND B) OR (A AND Cin) OR (B AND Cin)`[cite: 1]

The clock and reset inputs are not used because this is a purely
combinational circuit.[cite: 1]

## How to test

Apply A, B, and Cin through `ui_in[2:0]`, then read Sum and Cout from
`uo_out[1:0]`.[cite: 1]

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

## External hardware

No external hardware is required.[cite: 1]
