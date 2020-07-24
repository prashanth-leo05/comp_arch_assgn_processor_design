`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2020 13:55:42
// Design Name: 
// Module Name: instr_fetch_blck
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


module instr_fetch_blck(
    input clk,
    input reset,
    output [7:0] instr_code,
    
    input [5:0]jmpaddr,
    input branch
    );
    
    reg [7:0] PC; wire [7:0] temp;
    
    assign temp = PC + 1; 
    
    
    instr_mem_blck u1 (PC,reset,instr_code);
    
    always@(posedge clk,negedge reset)
    begin
    
    if(reset ==0) 
    PC = 0;
    
    else if(branch) 
     PC = {temp[7:6],jmpaddr};
     
    else
    PC = PC+1;
    
    end       
endmodule
