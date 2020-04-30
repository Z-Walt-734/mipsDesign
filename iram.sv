module iram (input [5:0] adder, output [31:0] rd);
	logic [31:0] ram[63:0];

	initial
		$readmemh("memfile.dat",ram);

	assign rd = ram[adder];
endmodule

	