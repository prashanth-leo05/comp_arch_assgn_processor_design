`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2020 23:14:30
// Design Name: 
// Module Name: mux_8_bit
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


module mux_8_bit(
    input [7:0]a,
    input [7:0]b,
    input ctrl,
    output [7:0] out
    );
    
  assign out = ctrl?a:b;
endmodule