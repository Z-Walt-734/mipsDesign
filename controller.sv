module controller (input logic [5:0] instruc, funct, input logic z, output logic mem_reg, mem_write, pc_src, alu_src, reg_dst, reg_write, jump, output logic [2:0] alu_control);

	logic [1:0] alu_funct;
	logic branch;

	maindec md(instruc, mem_reg, mem_write, alu_src, reg_dst, reg_write, jump, alu_funct, branch);
	aluDecoder ad(funct, alu_control, alu_funct);
	assign pc_src = branch & z;
	

endmodule


//module controller(op, funct, zero, memtoreg, memwrite, pcsrc, alusrc, regdst, regwrite, jump, alucontrol); 
//
//    input logic [5:0] op, funct; 
//
//    input logic zero; 
//
//    output logic memtoreg, memwrite, pcsrc, alusrc, regdst, regwrite, jump; 
//
//    output logic [2:0] alucontrol; 
//
//    maindec md(op, memtoreg,  memwrite, branch, alusrc, regdst, regwrite, jump, aluop); 
//
//    aluDecoder ad (funct, aluop, alucontrol); 
//
//    assign pcsrc=branch&zero; 
//
//endmodule





