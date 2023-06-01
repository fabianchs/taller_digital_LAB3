`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 09:49:54
// Design Name: 
// Module Name: data_register
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


module data_register (
    input logic [31:0] IN1,
    input logic WR1,
    input logic [31:0] IN2,
    input logic WR2,
    input logic [7:0] addr1,
    input logic [7:0] addr2,
    input logic hold_ctrl,
    output logic [31:0] OUT_DATA_REGISTER
);

    logic [31:0] reg1;
    logic [31:0] reg2;
    logic [31:0] control_reg;
    
    assign reg1=IN1;
    assign reg2=IN2;

    always_ff @(posedge hold_ctrl) begin
        if (WR1) begin
            reg1[addr1] <= IN1;
        end
    end
    
    always_ff @(posedge hold_ctrl) begin
        if (WR2) begin
            reg2[addr2] <= IN2;
        end
    end
    

    always_comb begin
        OUT_DATA_REGISTER = control_reg;
    end
    

    always_ff @(posedge hold_ctrl) begin
        control_reg <= {reg1, reg2};
    end

endmodule

//se
