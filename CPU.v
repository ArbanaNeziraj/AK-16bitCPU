`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2024 01:18:51 AM
// Design Name: 
// Module Name: CPU
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


module CPU(input Clock);

wire [2:0] Opcode; //D_OUT_1
//CU_OUT_x
wire RegDst, Branch, MemRead, MemWrite, RegWrite, MemToReg, ALUSrc;
wire [1:0] ALUOp;

//inicializimi i Datapath
Datapath DP
(
Clock,
RegDst, 
Branch, 
MemRead, 
MemWrite, 
RegWrite, 
MemToReg, 
AluSrc,
ALUOp,
Opcode
);

ControlUnit CU(
Opcode,
RegDst, 
Branch, 
MemRead, 
MemToReg,
ALUOp,
MemWrite, 
ALUSrc,
RegWrite
);

endmodule
