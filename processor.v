`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2020 21:16:49
// Design Name: 
// Module Name: processor
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


module processor(
    input clk,
    input reset
    );
    wire [7:0] instr_code;
    wire [7:0]if_id_out;
    wire [7:0] read_data;
    wire reg_write,alu_instr;
    wire [15:0]id_ex_out;
    wire [7:0] alu_out,sgn_extnd_out,s8_out;
    wire [11:0]ex_wb_out;
    wire frwd;
    wire [7:0]s11_out;
    
instr_fetch_blck s1 (clk,reset,instr_code,instr_code[5:0],instr_code[7]);  // branch = instr_code[7]

if_id_pl_reg s2 (clk,reset,instr_code,if_id_out);

reg_file s3 (reset,if_id_out[5:3],read_data,ex_wb_out[2:0],ex_wb_out[10:3],ex_wb_out[11]);

ctrl_unit s4 (reset,if_id_out[7:6],reg_write,alu_instr);

id_ex_pl_reg s5 (clk,reset,reg_write,alu_instr,read_data,if_id_out[5:3],if_id_out[2:0],id_ex_out);

ALU s6 (s11_out,id_ex_out[2:0],alu_out);

sign_extnd_blck s7 (id_ex_out[2:0], sgn_extnd_out);

mux_8_bit s8 (alu_out,sgn_extnd_out,id_ex_out[14],s8_out);

ex_wb_pl_reg s9 (clk,reset,id_ex_out[15],s8_out,id_ex_out[5:3],ex_wb_out);

frwdng_unit s10 (ex_wb_out[11],ex_wb_out[2:0],id_ex_out[5:3],frwd);

mux_8_bit s11 (ex_wb_out[10:3],id_ex_out[13:6],frwd,s11_out);
endmodule
