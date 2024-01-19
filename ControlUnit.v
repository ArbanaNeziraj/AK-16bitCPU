`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2024 09:38:10 PM
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input [3:0] Opcode,
    output reg RegDst,
    output reg Branch,
    output reg MemRead,
    output reg MemToReg,
    output reg [1:0] ALUOp,
    output reg MemWrite,
    output reg AluSrc,
    output reg RegWrite
    );
    
    always @ (Opcode)
begin
case(Opcode)
4'b0000:  //AND 
    begin
    RegDst = 1;
    AluSrc = 0;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    ALUOp[1] = 1;
    ALUOp[0] = 0;
    end

4'b0010:   //OR
    begin
    RegDst = 1;
    AluSrc = 0;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    ALUOp[1] = 1;
    ALUOp[0] = 0;
    end 
    
4'b0011:   //XOR
    begin
    RegDst = 1;
    AluSrc = 0;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite =0;
    Branch = 0;
    ALUOp[1] = 1;
    ALUOp[0] = 0;
    end 
    
4'b0100:  //ADD
    begin
    RegDst = 1;
    AluSrc = 0;
    RegWrite = 0;
    MemRead = 1;
    MemWrite = 0;
    Branch = 0;
    ALUOp[1] = 1;
    ALUOp[0] = 0;
    end 
    
4'b0101:  //ADDI
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    ALUOp[1] = 1;
    ALUOp[0] = 1;
    end 
    
    
4'b1100:  //SUB
    begin
    RegDst = 1;
    AluSrc = 0;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    ALUOp[1] = 1;
    ALUOp[0] = 0;
    end 

4'b1101:   //SUBI
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    ALUOp[1] = 1;
    ALUOp[0] = 1;
    end 

4'b0001:   //SLTI
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    ALUOp[1] = 1;
    ALUOp[0] = 1;
    end 

 4'b1100:  //LW
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 1;
    RegWrite = 1;
    MemRead = 1;
    MemWrite = 0;
    Branch = 0;
    ALUOp[1] = 0;
    ALUOp[0] = 0;
    end 

4'b1101:  //SW
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 0;
    RegWrite = 0;
    MemRead = 0;
    MemWrite = 1;
    Branch = 0;
    ALUOp[1] = 0;
    ALUOp[0] = 0;
    end 

 4'b1111:  //BEQ
    begin
    RegDst = 0;
    AluSrc = 0;
    MemToReg = 0;
    RegWrite = 0;
    MemRead = 0;
    MemWrite = 0;
    Branch = 1;
    ALUOp[1] = 0;
    ALUOp[0] = 1;
    end 

4'b0010:  //SLL
    begin
    RegDst = 1;
    AluSrc = X;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    ALUOp[1] = 1;
    ALUOp[0] = 0;
    end 

4'b0010:  //SRA
    begin
    RegDst = 1;
    AluSrc = X;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    ALUOp[1] = 1;
    ALUOp[0] = 0;
    end 
endcase

end

endmodule
