`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2020 09:35:53
// Design Name: 
// Module Name: if_id_pl_reg
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


module if_id_pl_reg(
 input clk,
   input reset,
   input [7:0] data,
   output reg [7:0]out
  );
  
      always@(posedge clk)
      begin
  if(!reset)
  out = 0;
  else
  out = data ;
  end
endmodule
