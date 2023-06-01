`timescale 1ns / 1ps



module control_register#(parameter N=32)(clk, IN1, WR1, IN2, WR2, OUT_CONTROL_REGISTER
    );
    
    input logic [7:0]IN1, IN2;
    input logic WR1, WR2, clk;
    output logic [31:0]OUT_CONTROL_REGISTER;
    
    always @(posedge clk) begin
       
    if(WR1) OUT_CONTROL_REGISTER<=IN1;
    else if (WR2) OUT_CONTROL_REGISTER<=IN2;
    else OUT_CONTROL_REGISTER<=OUT_CONTROL_REGISTER;
    
    end

endmodule


`timescale 1ns / 1ps

