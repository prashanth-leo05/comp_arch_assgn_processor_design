`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2020 17:41:57
// Design Name: 
// Module Name: sign_extnd_blck
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


module sign_extnd_blck(
    input [2:0] in,
    output [7:0] out
    );
    
    assign out = ((1<<2)&in)?{5'b11111,in}:{5'b0,in};
endmodule
