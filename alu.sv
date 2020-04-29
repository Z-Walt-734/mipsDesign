module alu (A, B, F, Y, Zero);
	input [31:0] A, B;
	input [2:0] F;
	output reg [31:0] Y;
	output Zero;
	wire [31:0] SUM, Bout;
	
	assign Bout = F[2]? ~B: B;
		
	assign SUM = A + Bout + F[2];
	assign Zero = (Y == 0);
	
	always @(*)
		case(F[1:0])
			2'b00: Y = A & Bout;
			2'b01: Y = A | Bout;
			2'b10: Y = SUM;
			2'b11: Y = SUM[31];
		endcase
endmodule
