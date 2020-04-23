module top (input clk, reset, output logic [31:0] write_data, data_adder, output logic ram_write);
	logic [31:0] pc, instruction, read_data;

	processor mips (clk, reset, pc, instruction, ram_write, data_adder, write_data, read_data);

	iram iram(pc[7:2], instruction);
	dram dram(clk, ram_write, data_adder, write_data, read_data);

endmodule