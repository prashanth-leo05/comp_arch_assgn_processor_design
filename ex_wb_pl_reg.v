`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2020 10:48:11
// Design Name: 
// Module Name: ex_wb_pl_reg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ex_wb_pl_reg(
 input clk,
  input reset,
  input reg_write,
  input [7:0] data,
  input [2:0] rd,
  output reg [11:0]out

    );
    
    always@(posedge clk)
    begin
    if(!reset)
    out = 0;
    else
    out = {reg_write,data,rd} ;
    end
endmodule
