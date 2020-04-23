module processor(input logic clk, reset, input logic [31:0] instruc, input logic [31:0] read_data, output logic mem_write, output logic [31:0] pc, alu_out, write_data);
	logic mem_reg, alu_src, reg_dst, reg_write, jump, pc_src, z;

	logic [2:0] alu_control;

	controller cont(instruc[31:26], instruc[5:0], z, mem_reg, mem_write, pc_src, alu_src, reg_dst, reg_write, jump, alu_control);

	dataPath dpath(clk, reset, mem_reg, pc_src, alu_src, reg_dst, reg_write, jump, alu_control, zero, pc, instruc, alu_out, write_data, read_data);

endmodule

