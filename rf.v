`timescale 1ns/1ps

module register(
    input clk,
    input nrst,
    input [4:0] rd_addrA,
    input [4:0] rd_addrB,
    output [31:0] rd_dataA,
    output [31:0] rd_dataB,
    input wr_en,
    input [4:0] wr_addr,
    input [31:0] wr_data
    );

    reg [31:0] int_data [31:0];

    always@(*) begin
        
    end

endmodule
