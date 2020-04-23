module dram (input clk, we, input [31:0] adder, write_data, output [31:0] read_data);
	logic [31:0] read_data;
	logic [31:0] ram_data [63:0];

	always@(ram_data[adder])begin
		read_data = ram_data[adder];
	end

	always@(posedge clk)begin
		if(1'b1==we)begin
			ram_data[adder] = write_data;
		end
	end
endmodule