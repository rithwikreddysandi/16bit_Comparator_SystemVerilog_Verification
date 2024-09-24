# 16bit_Comparator_SystemVerilog_Verification

This repository contains the design and verification environment for the 16-bit comparator, implemented in SystemVerilog.

## Overview

The 16-bit comparator is a digital circuit designed to compare two 16-bit binary numbers. It provides three outputs to indicate the relationship between the two numbers:

- *`A < B`*: High (1) if A is less than B.
- *`A = B`*: High (1) if A is equal to B.
- *`A > B`*: High (1) if A is greater than B.


## Files

Description of each file in the repository:
<br>
<br>
Design Files
<br>
- **`comp.v`**: Verilog implementation of the 16-bit comparator.
<br>
Testbench and Verification Files
<br>

- **`testbench.sv`**: Top-level module that integrates the 32-bit comparator and the testbench.<br>
- **`comp_tb.sv`**: Testbench module for the 32-bit comparator.<br>
- **`comp_int.sv`**: Interface definition for the 32-bit comparator.<br>
- **`comp_env.sv`**: Environment setup for the comparator testbench.<br>
- **`comp_cov.sv`**: Coverage analysis module for the comparator.<br>
- **`comp_ckr.sv`**: Checker module to validate the comparator functionality.<br>
- **`comp_mon.sv`**: Monitor module to observe and report the comparator's behavior.<br>
- **`comp_bfm.sv`**: Bus Functional Model (BFM) for generating and managing transactions.<br>
- **`comp_gen.sv`**: Random test case generator for the comparator.<br>
- **`comp_cfg.sv`**: Configuration class for setting up the test environment.<br>
- **`comp_tx.sv`**: Transaction class for handling and generating input values.<br>

<br>



### `Input Vectors of the 16bit_Comparator`
![image](https://github.com/user-attachments/assets/7bc5aea5-9639-4ff9-a6f4-f91d0bfdff0c)
![image](https://github.com/user-attachments/assets/aeda4196-d869-426f-a31e-8296ef01906c)


### Output Result
![image](https://github.com/user-attachments/assets/310ceb36-9f7d-486f-880f-616086b7bd6e)



