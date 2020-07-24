`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2020 13:36:11
// Design Name: 
// Module Name: instr_mem_blck
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


module instr_mem_blck(
    input [7:0] PC,
    input reset,
    output [7:0] instr_code
    );
    
    reg [7:0] Mem [8:0];
 
  assign  instr_code = Mem[PC];   
 
 
    always@( reset)
   
    if(reset==0)
    begin 
     Mem[0]=8'b00010011;
     Mem[1]=8'b01010001;
     Mem[2]=8'b00001010;
     Mem[3]=8'b11000101;
     Mem[4]=8'b01001011;
     Mem[5]=8'b00111100; 

   
    end
   

endmodule
