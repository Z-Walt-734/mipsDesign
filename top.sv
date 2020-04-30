module top(input  logic        clk, reset, 
           output logic [31:0] writedata, dataadr, 
           output logic        memwrite);

  logic [31:0] pc, instr, readdata;
  
  // instantiate processor and memories
  processor mips(clk, reset, pc, instr, memwrite, dataadr, 
            writedata, readdata);
  iram imem(pc[7:2], instr);
  dram dmem(clk, memwrite, dataadr, writedata, readdata);
endmodule