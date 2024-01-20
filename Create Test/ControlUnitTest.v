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

        // Ndrysho vlerën e Opcode për një rast tjetër
        Opcode = 4'b0101; // ADDI
        #5;

        // Ndrysho vlerën e disa signaleve të tjera
        MemRead = 1;
        MemToReg = 1;
        RegWrite = 1;
        #5;

        // Ndrysho vlerën e ALUOp
        ALUOp = 2'b10;
        #5;

        // Ndrysho vlerën e disa signaleve të tjera
        AluSrc = 1;
        MemWrite = 1;
        #5;

        // Ndrysho vlerën e Branch
        Branch = 1;
        #5;

        // Ndalo simulimin
        $stop;
    end

endmodule
