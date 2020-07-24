`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2020 10:46:20
// Design Name: 
// Module Name: id_ex_pl_reg
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


module id_ex_pl_reg(
    input clk,
input reset,
input reg_write,
input alu_instr,
input [7:0] data,
input [2:0] rd,
input [2:0] immd,

output reg [15:0] out
    );
    
   always@(posedge clk)
   if(!reset)
   out = 0;
   else
   out = {reg_write,alu_instr,data,rd,immd} ;
endmodule
