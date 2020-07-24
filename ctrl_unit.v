`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2020 18:52:21
// Design Name: 
// Module Name: ctrl_unit
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


module ctrl_unit( input reset,
    input [1:0]instr_bit,
    output reg reg_write,
    output reg alu_instr
    );
    

      always@( reset,instr_bit)
    
    if(reset == 0 )
    begin
  reg_write = 0;
    alu_instr = 0;
    end  
 
  else begin
  reg_write = !instr_bit[1];        //branch instruction or not
  alu_instr = instr_bit[0];      // R-type or I-type
  end
endmodule
