module iram (input [5:0] adder, output [31:0] read_data);
	logic [31:0] ram_data[63:0];

	initial
		$readmemh("memfile.dat",ram_data);

	assign read_data = ram_data[adder];
endmodule : iram

	