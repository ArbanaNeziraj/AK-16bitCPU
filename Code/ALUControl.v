`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2024 09:26:12 PM
// Design Name: 
// Module Name: ALUControl
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


module ALUControl(
    input [1:0] ALUOp,
    input [2:0] Funct,
    input [2:0] Opcode,
    output reg [3:0] ALUCtrl
    );
    
    always @(ALUOp)
begin
case(ALUOp) 
    2'b00: ALUCtrl = 4'b0100; 
    2'b01: ALUCtrl = 4'b1100; 
    2'b10: 
        case(Funct)
            4'b0000: ALUCtrl = 4'b0100; 
            4'b0001: ALUCtrl = 4'b1100; 
            4'b1101 : ALUCtrl = 4'b0011; 
            4'b0010 : ALUCtrl = 4'b0111; 
        endcase

    2'b11: 
        case(Opcode)
            3'b011: ALUCtrl = 4'b0101; 
            3'b001: ALUCtrl = 4'b0000; 
            3'b010: ALUCtrl = 4'b0010; 
            3'b100: ALUCtrl = 4'b0001; 
        endcase
endcase
end

endmodule
