module testbench ();
	logic clk, reset, mem_write;

	logic [31:0] write_data, data_addr;

	top dut(clk, reset, write_data, data_addr, mem_write);

	initial begin
		reset <= 1; #20; 
		reset <= 0;
	end

	always begin
		clk <= 1; #5;
		clk <= 0; #5;
	end

	always@(negedge clk)begin
		if(mem_write) begin
			if(data_addr === 84 & write_data === 7)begin
				$display("Success");
				$stop;
			end
			else if(data_addr !== 80)begin
				$display("Error");
				$stop;
			end
		end
	end
endmodule