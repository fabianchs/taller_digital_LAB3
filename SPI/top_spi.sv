`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 09:23:49
// Design Name: 
// Module Name: top_spi
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


module top_spi(wr_i, reg_sel_i, entrada_i, addr_in, salida_o);

    input logic wr_i;
    input logic [1:0]reg_sel_i;
    input logic [31:0] entrada_i;
    input logic addr_in;
    output logic [31:0] salida_o;
    
    logic WR1_TO_CONTROL, WR1_TO_DATA;
    logic [31:0] TOP_OUT_CONTROL_REGISTER, TOP_OUT_DATA_REGISTER;
    
    wr_demux OP0(.wr_i(wr_i), .reg_sel_i(reg_sel_i), .CONTROL_WR_ACTIVATE(WR1_TO_CONTROL), .DATA_WR_ACTIVATE(WR1_TO_DATA));
    control_register OP1(.IN1(entrada_i), .WR1(WR1_TO_CONTROL), .IN2(0), .WR2(0), .OUT_CONTROL_REGISTER(TOP_OUT_CONTROL_REGISTER));
    data_register OP2(.IN1(entrada_i), .WR1(WR1_TO_DATA), .IN2(), .WR2(), .addr1(addr_in), .addr2(), .hold_ctrl(), .OUT_DATA_REGISTER(TOP_OUT_DATA_REGISTER));
    out_mux OP3(.reg_sel_i(reg_sel_i), .CONTROL_REG_INFO(TOP_OUT_CONTROL_REGISTER), .DATA_REG_INFO(TOP_OUT_DATA_REGISTER), .OUT_MUX(salida_o));
endmodule
