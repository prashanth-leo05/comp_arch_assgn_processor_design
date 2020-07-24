`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2020 14:14:39
// Design Name: 
// Module Name: reg_file
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


module reg_file(
    input reset,

    input [2:0] read_reg_no,
   output [7:0] read_data,
   input [2:0]write_reg_no,
    input [7:0] write_data,
    input reg_write
    
    );
    
    reg [7:0] RegMem [7:0];
    

assign read_data = RegMem[read_reg_no];


    always@( reset)
    
    if(reset == 0 )
    begin
    RegMem[0]=0;
    RegMem[1]=1;
    RegMem[2]=2; 
    RegMem[3]=3; 
    RegMem[4]=4;
    RegMem[5]=5; 
    RegMem[6]=6;
    RegMem[7]=7; 
       
    end
 
 always@(write_reg_no,write_data,reg_write)
  if(reg_write)  
  RegMem[write_reg_no] =  write_data;
   
endmodule
