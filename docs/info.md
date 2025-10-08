<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project implements a 32-bit Linear Feedback Shift Register (LFSR) that
produces pseudo-random numbers. When reset, the register initializes with my
matriculation number (encoded as 32'd 11927533). Each clock cycle shifts the
register and XORs specific bits to generate the next state.
## How to test

1. Apply a reset signal (`rst_n` low) to initialize the LFSR.
2. Release the reset (set `rst_n` high) and apply a clock signal.
3. Observe the output bits on `uo_out` and `uio_out`.  
   They should shift in a pseudo-random pattern based on the feedback taps.

## External hardware

List external hardware used in your project (e.g. PMOD, LED display, etc), if any
