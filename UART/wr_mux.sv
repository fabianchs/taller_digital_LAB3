`timescale 1ns / 1ps



module wr_demux( wr_i, reg_sel_i, CONTROL_WR_ACTIVATE, DATA_WR_ACTIVATE
    );
    
    input logic reg_sel_i;
    input logic wr_i;
    output logic CONTROL_WR_ACTIVATE, DATA_WR_ACTIVATE;
    
    always @(reg_sel_i)
        case(reg_sel_i) 
            1'b0: begin CONTROL_WR_ACTIVATE=wr_i;  DATA_WR_ACTIVATE=0; end
            1'b1: begin DATA_WR_ACTIVATE=wr_i; CONTROL_WR_ACTIVATE=0; end
            default: begin CONTROL_WR_ACTIVATE=wr_i;  DATA_WR_ACTIVATE=0; end
        endcase
    
endmodule