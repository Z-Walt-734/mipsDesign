# mipsDesign

## Components
* ALU
* ALU Decoder
* Controller
* Data Path
* Data RAM
* Resettable Flip Flop
* Instruction RAM
* Main Decoder
* Memory Data File
* Multiplexer
* Processor
* Register File
* Sign Extension
* Left Shift
* Testbench
* Top File

### ALU
	Performs basic computations such as add, subtract, or, and zero check.

### Alu Decoder
	Takes in basic function instructions and sends data to the ALU for operation.

### Controller
	Sorts and sends data to either the Main Decoder or the ALU Decoder.

### Data Path
	Handles instructions for the entire circuit. A collection of Multiplexers, Flip Flops, and registers. 

### Data RAM
	Data RAM stores the data that is being processed but only during processing. 

### Resettable Flip Flop
	Basic Flip Flop.

### Instruction RAM
	Stores the information regarding the instructions that are being executed on data.

### Main Decoder
	Sorts instructions based on what the outcome is and activates the associated components.

### Memory Data File
	List of instructions stored in HEX that is read into the Instruction RAM.
	The following is all the instructions in order
	> ADDI $a3 $zero 0x0003
	> ADDI $v1 $zero 0x000C
	> OR $a0 $a3 $v0
	> AND $a1 $v1 $a0
	> ADD $a1 $a1 $a0
	> BEQ $a1 $a3 0x0008
	> SLT $a2 $v1 $a0
	> BEQ $a2 $zero 0x0001
	> ADDI $a1 $zero 0x000A
	> SLT $a2 $a3 $v0
	> ADD $a3 $a2 $a1# mipsDesign

## Components
* ALU
* ALU Decoder
* Controller
* Data Path
* Data RAM
* Resettable Flip Flop
* Instruction RAM
* Main Decoder
* Memory Data File
* Multiplexer
* Processor
* Register File
* Sign Extension
* Left Shift
* Testbench
* Top File

### ALU
	Performs basic computations such as add, subtract, or, and zero check.

### Alu Decoder
	Takes in basic function instructions and sends data to the ALU for operation.

### Controller
	Sorts and sends data to either the Main Decoder or the ALU Decoder.

### Data Path
	Handles instructions for the entire circuit. A collection of Multiplexers, Flip Flops, and registers. 

### Data RAM
	Data RAM stores the data that is being processed but only during processing. 

### Resettable Flip Flop
	Basic Flip Flop.

### Instruction RAM
	Stores the information regarding the instructions that are being executed on data.

### Main Decoder
	Sorts instructions based on what the outcome is and activates the associated components.

### Memory Data File
	List of instructions stored in HEX that is read into the Instruction RAM.
	The following is all the instructions in order
	- ADDI $a3 $zero 0x0003
	- ADDI $v1 $zero 0x000C
	- OR $a0 $a3 $v0
	- AND $a1 $v1 $a0
	- ADD $a1 $a1 $a0
	- BEQ $a1 $a3 0x0008
	- SLT $a2 $v1 $a0
	- BEQ $a2 $zero 0x0001
	- ADDI $a1 $zero 0x000A
	- SLT $a2 $a3 $v0
	- ADD $a3 $a2 $a1
	- SUB $a3 $a3 $v0
	- J 0x000000F
	- LW $a3 0x0000 $zero
	- SW $a3 0x0047 $v0
	- CLEAR
	- CLEAR
	- CLEAR

### Multiplexer
	Basic Variable bit Multiplexer.

### Processor
	Takes in data and instructions and sorts it to the Controller and Data Path as needed.

### Register File
	Register array for preping data for either memory or functional units.

### Sign Extension
	Appends bits based on the MSB to preserve the integrity of data signs.

### Left Shift
	Uses a 2 bit left shift operation to multiply by 4. Used in Data Path as component.

### Testbench
	Contains necessary print statements to print success or fail statements during troubleshooting and compiling.

### Top File
	Entry point for the system. This is the top level file to be loaded and compiled. 

	> SUB $a3 $a3 $v0
	> J 0x000000F
	> LW $a3 0x0000 $zero
	> SW $a3 0x0047 $v0
	> CLEAR
	> CLEAR
	> CLEAR

### Multiplexer
	Basic Variable bit Multiplexer.

### Processor
	Takes in data and instructions and sorts it to the Controller and Data Path as needed.

### Register File
	Register array for preping data for either memory or functional units.

### Sign Extension
	Appends bits based on the MSB to preserve the integrity of data signs.

### Left Shift
	Uses a 2 bit left shift operation to multiply by 4. Used in Data Path as component.

### Testbench
	Contains necessary print statements to print success or fail statements during troubleshooting and compiling.

### Top File
	Entry point for the system. This is the top level file to be loaded and compiled. 
