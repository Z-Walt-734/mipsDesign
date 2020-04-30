module maindec(input  logic [5:0] op,
               output logic       memtoreg, memwrite,
               output logic       branch, alusrc,
               output logic       regdst, regwrite,
               output logic       jump,
               output logic [1:0] aluop);

  logic [8:0] controls;

  assign {regwrite, regdst, alusrc, branch, memwrite,
          memtoreg, jump, aluop} = controls;

always_comb
	case(op)
		6'b000000: controls <= 9'b110000010;	// R
		6'b100011: controls <= 9'b101001000;	// lword
		6'b100001: controls <= 9'b001010000;	// sword
		6'b000100: controls <= 9'b000100001;	// branch on equal
		6'b001000: controls <= 9'b101000000;	// add imediate
		6'b000010: controls <= 9'b000000100;	// jump
		6'b101010: controls <= 9'b110000101;    // slt
		default: controls <= 9'bxxxxxxxxx; 		// Catch all
	endcase // operation
endmodule : maindec