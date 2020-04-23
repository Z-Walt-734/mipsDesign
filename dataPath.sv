module dataPath (input logic clk, reset, mem_to_reg, pc_src, alu_src, regdst, reg_write, jump, input logic [2:0] alu_control, input logic [31:0] read_data, instruction, output logic zero, output logic [31:0] pc, alu_out, write_data);
	logic [4:0] write_reg;
	logic [31:0] pc_next, pc_next_br, pc_plus4, pc_branch, sign_immediate, sign_immediate_sh, source_a, source_b, result;

	flopr#(32) pc_register(clk, reset, pc_next, pc);
	adder pc_add1(pc, 32'b100, pc_plus4);
	sl2 immsh(sign_immediate, sign_immediate_sh);
	adder pcadd2(pc_plus4, sign_immediate_sh,pc_branch);
	mux2#(32) pcbrmux(pc_plus4, pc_branch, pc_src, pc_next_br);
	mux2#(32) pcmux(pc_next_br, {pc_plus4[31:28], instruction [25:0], 2'b00}, jump, pc_next);

	regFile rf(clk, reg_write, instruction[25:21], instruction[20:16], write_reg, result, source_a, write_data);
	mux2#(5) wrmux(instruction[20:16], instruction[15:11], regdst, write_reg);
	mux2#(32) resmux(alu_out, read_data, mem_to_reg, result);
	mux2#(32) source_b_mux(write_data, sign_immediate, alu_src, source_b);
	alu alu(source_a, source_b, alu_control, alu_out, zero);

endmodule