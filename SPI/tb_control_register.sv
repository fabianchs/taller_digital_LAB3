`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2023 20:09:09
// Design Name: 
// Module Name: tb_control_register
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


module tb_control_register;

    logic [7:0]IN1, IN2;
    logic WR1, WR2, clk;
    logic [31:0]OUT_CONTROL_REGISTER;
    
    control_register dut(.IN1(IN1), .IN2(IN2), .WR1(WR1), .WR2(WR2), .clk(clk), .OUT_CONTROL_REGISTER(OUT_CONTROL_REGISTER));
    
    initial begin
        clk=0;
        end
        always begin
        #5
        clk=~clk;
    end 
    
    initial begin
    
    #1
    IN1<=8'b11110000;
    IN2<=8'b11101100;
    WR1<=0;
    WR2<=0;
    #10
    IN1<=8'b11110000;
    IN2<=8'b11101100;
    WR1<=1;
    WR2<=0;
    #10
    IN1<=8'b11110000;
    IN2<=8'b11101100;
    WR1<=0;
    WR2<=1;
    #10
    IN1<=8'b10010000;
    IN2<=8'b11101100;
    WR1<=1;
    WR2<=0;
    #10
        
    
    
    
    $finish;
    end

endmodule
