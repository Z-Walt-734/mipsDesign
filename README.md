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
