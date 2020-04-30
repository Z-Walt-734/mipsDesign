module dram (input logic clock, we,
    input logic [11:0]  addr, 
    input logic [31:0]  wd,
    output logic [31:0]  rd);

    reg [31:0] ram [127:0];
    integer i;
    initial begin
        for (i=0; i<127; i=i+1) begin
            ram[i] = 32'b0;
        end
    end
    always_ff @(posedge clock) begin
        if (we) ram[addr] <= wd;
    end
    assign rd = ram[addr];

endmodule