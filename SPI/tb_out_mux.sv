`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2023 19:52:02
// Design Name: 
// Module Name: tb_out_mux
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


module tb_out_mux;


    logic reg_sel_i;
    logic [7:0] CONTROL_REG_INFO, DATA_REG_INFO, OUT_MUX;
    
    out_mux dut(.reg_sel_i(reg_sel_i), .CONTROL_REG_INFO(CONTROL_REG_INFO), .DATA_REG_INFO(DATA_REG_INFO), .OUT_MUX(OUT_MUX));
    
    initial begin
    
    #10
    CONTROL_REG_INFO<=8'b11001010;
    DATA_REG_INFO<=8'b10101110;
    reg_sel_i<=1;
        #10
    CONTROL_REG_INFO<=8'b11001010;
    DATA_REG_INFO<=8'b10101110;
    reg_sel_i<=0;
        #10
    CONTROL_REG_INFO<=8'b11101010;
    DATA_REG_INFO<=8'b10101111;
    reg_sel_i<=0;
        #10
    CONTROL_REG_INFO<=8'b11001000;
    DATA_REG_INFO<=8'b10101110;
    reg_sel_i<=1;
        #10
    CONTROL_REG_INFO<=8'b10101010;
    DATA_REG_INFO<=8'b10100010;
    reg_sel_i<=1;
        #10
    CONTROL_REG_INFO<=8'b11101010;
    DATA_REG_INFO<=8'b10100000;
    reg_sel_i<=1;
    
    $finish;
    end
endmodule
