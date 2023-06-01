`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2023 19:33:38
// Design Name: 
// Module Name: tb_wr_demux
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


module tb_wr_demux;

 logic wr_i, reg_sel_i, CONTROL_WR_ACTIVATE, DATA_WR_ACTIVATE;
 
 wr_demux dut(.wr_i(wr_i), .reg_sel_i(reg_sel_i), .CONTROL_WR_ACTIVATE(CONTROL_WR_ACTIVATE), .DATA_WR_ACTIVATE(DATA_WR_ACTIVATE));
 
 initial begin
 
 #10
 wr_i<=0;
 reg_sel_i<=0;
  #10
 wr_i<=0;
 reg_sel_i<=1;
  #10
 wr_i<=1;
 reg_sel_i<=0;
  #10
 wr_i<=1;
 reg_sel_i<=1;
  #10
 wr_i<=0;
 reg_sel_i<=0;
  #10
 wr_i<=0;
 reg_sel_i<=1;
  #10
 wr_i<=1;
 reg_sel_i<=0;
  #10
 wr_i<=1;
 reg_sel_i<=1;
 
 
 $finish;
 end
 


endmodule
