module maindec(input logic [5:0] instruc, output logic mem_reg, mem_write, branch, alu_src, reg_dst, reg_write, jump, output logic [1:0] alu_instruc);
logic [8:0] controls;

assign {reg_write, reg_dst, alu_src, branch, mem_write, mem_reg, jump, alu_instruc} = controls;

always_comb
	case(instruc)
		6'b000000: controls <= 9'b110000010;	// Read
		6'b100011: controls <= 9'b101001000;	// longword
		6'b100001: controls <= 9'b001010000;	// shortword
		6'b000100: controls <= 9'b000100001;	// branch on equal
		6'b001000: controls <= 9'b101000000;	// add imediate
		6'b000010: controls <= 9'b000000100;	// jump
		default: controls <= 9'bxxxxxxxxx; 		// Catch all
	endcase // operation
endmodule : maindec
