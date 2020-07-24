`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2020 20:33:53
// Design Name: 
// Module Name: frwdng_unit
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


module frwdng_unit(
input ex_wb_reg_write,
input [2:0] ex_wb_rd,
input [2:0] id_ex_rs,

output frwd
    );
    
    assign frwd = ex_wb_reg_write? (ex_wb_rd== id_ex_rs)? 1:0:0;
endmodule
