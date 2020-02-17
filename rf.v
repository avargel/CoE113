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

    assign rd_dataA = int_data[rd_addrA];
    assign rd_dataB = int_data[rd_addrB];

    always@(posedge clk) begin
      if(!nrst) begin
        int i;
        for (i = 0; i < 32; i = i+1) begin
          int_data[i] <= 0;
        end
      end else begin
        if (wr_en)
          int_data[wr_addr] <= wr_data;
      end
    end

endmodule
