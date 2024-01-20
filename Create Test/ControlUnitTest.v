`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 04:40:31
// Design Name: 
// Module Name: ControlUnitTest
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


module ControlUnitTest();
  reg [3:0] Opcode;
    reg RegDst;
    reg Branch;
    reg MemRead;
    reg MemToReg;
    reg [1:0] ALUOp;
    reg MemWrite;
    reg AluSrc;
    reg RegWrite;
    
    initial
    begin
        // Vendosni vlerat fillestare
        Opcode = 4'b0000; // AND
        #5;

        // Ndrysho vler�n e Opcode p�r nj� rast tjet�r
        Opcode = 4'b0101; // ADDI
        #5;

        // Ndrysho vler�n e disa signaleve t� tjera
        MemRead = 1;
        MemToReg = 1;
        RegWrite = 1;
        #5;

        // Ndrysho vler�n e ALUOp
        ALUOp = 2'b10;
        #5;

        // Ndrysho vler�n e disa signaleve t� tjera
        AluSrc = 1;
        MemWrite = 1;
        #5;

        // Ndrysho vler�n e Branch
        Branch = 1;
        #5;

        // Ndalo simulimin
        $stop;
    end

endmodule
