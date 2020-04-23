module top (input clk, reset);
	logic [31:0] iram_data, iram_adder, dram_rdata, dram_adder, dram_wdata;
	logic dram_we;

	imem imem_instruction(iram_adder[7:2], iram_data);

	processor mips_processor(clk, reset, iram_data, iram_adder, dram_rdata, dram_we, dram_adder, dram_wdata);

	dmem dmem_instruction(clk, dram_we, dram_adder, dram_wdata, dram_rdata);

endmodule