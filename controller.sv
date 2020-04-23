module controller (input logic [5:0] instruc, funct, input logic z, output logic mem_reg, mem_write, pc_src, alu_src, reg_dst, reg_write, jump, output logic [2:0] alu_control);

	logic [1:0] alu_funct;
	logic branch;

	maindec md(instruc, mem_reg, mem_write, alu_src, reg_dst, reg_write, jump, alu_funct branch);
	aludec ad(funct, alu_control, alu_funct);
	assign pc_src = branch & zero;
	

endmodule : controller





