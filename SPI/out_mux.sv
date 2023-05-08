`timescale 1ns / 1ps



module out_mux(reg_sel_i, CONTROL_REG_INFO, DATA_REG_INFO, OUT_MUX);
    
    input logic reg_sel_i;
    input logic [31:0] CONTROL_REG_INFO, DATA_REG_INFO;
    output logic [31:0] OUT_MUX;
    
    always @(reg_sel_i)
        case(reg_sel_i) 
            1'b0: begin OUT_MUX=CONTROL_REG_INFO; end
            1'b1: begin OUT_MUX=DATA_REG_INFO; end
            default: begin OUT_MUX=CONTROL_REG_INFO; end
        endcase
    
endmodule