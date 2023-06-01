`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2023 20:22:14
// Design Name: 
// Module Name: tb_data_register
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


module tb_data_register;

   logic [31:0] IN1;
   logic WR1;
   logic [31:0] IN2;
   logic WR2;
   logic [7:0] addr1;
   logic [7:0] addr2;
   logic hold_ctrl;
   logic [31:0] OUT_DATA_REGISTER;
   
   data_register dut(.IN1(IN1), .WR1(WR1), .IN2(IN2), .WR2(WR2), .addr1(addr1), .addr2(addr2), .hold_ctrl(hold_ctrl), .OUT_DATA_REGISTER(OUT_DATA_REGISTER));
   
   initial begin
   
   #1;
   
   IN1<=32'h1111ABCD;
   IN2<=32'hAB11ABCD;
   WR1<=0;
   WR2<=0;
   addr1<=8'h0A;
   addr2<=8'h2A;
   hold_ctrl<=1;
   #10
   IN1<=32'h1213ABCD;
   IN2<=32'hABB1ABCD;
   WR1<=0;
   WR2<=1;
   addr1<=8'h0A;
   addr2<=8'h2A;
   hold_ctrl<=0;
   #10
   IN1<=32'hAAA1AACD;
   IN2<=32'hCCD1ABCD;
   WR1<=1;
   WR2<=0;
   addr1<=8'h0A;
   addr2<=8'h2A;
   hold_ctrl<=1;
   #10
   IN1<=32'h2131ABCD;
   IN2<=32'h2311ABCD;
   WR1<=1;
   WR2<=0;
   addr1<=8'h0A;
   addr2<=8'h2B;
   hold_ctrl<=0;
   #10
   IN1<=32'h1156ABCD;
   IN2<=32'hAB11ACCC;
   WR1<=1;
   WR2<=0;
   addr1<=8'h5A;
   addr2<=8'h3A;
   hold_ctrl<=1;
   #10
   
   $finish;
   end         
    
    
endmodule
