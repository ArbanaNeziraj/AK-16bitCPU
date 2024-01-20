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
    RegDst = 1'b1;
    AluSrc = 1'b0;
    MemToReg = 1'b0;
    RegWrite = 1'b1;
    MemRead = 1'b0;
    MemWrite = 1'b0;
    Branch = 1'b0;
    ALUOp[1] = 1'b1;
    ALUOp[0] = 1'b0;
    end

4'b0010:   //OR
    begin
    RegDst = 1'b1;
    AluSrc = 1'b0;
    MemToReg = 1'b0;
    RegWrite = 1'b1;
    MemRead = 1'b0;
    MemWrite = 1'b0;
    Branch = 1'b0;
    ALUOp[1] = 1'b1;
    ALUOp[0] = 1'b0;
    end 
    
4'b0011:   //XOR
    begin
    RegDst = 1'b1;
    AluSrc = 1'b0;
    MemToReg = 1'b0;
    RegWrite = 1'b1;
    MemRead = 1'b0;
    MemWrite = 1'b0;
    Branch = 1'b0;
    ALUOp[1] = 1'b1;
    ALUOp[0] = 1'b0;
    end 
    
4'b0100:  //ADD
    begin
    RegDst = 1'b1;
    AluSrc = 1'b0;
    RegWrite = 1'b0;
    MemRead = 1'b1;
    MemWrite = 1'b0;
    Branch = 1'b0;
    ALUOp[1] = 1'b1;
    ALUOp[0] = 1'b0;
    end 
    
4'b0101:  //ADDI
    begin
    RegDst = 1'b0;
    AluSrc = 1'b1;
    MemToReg = 1'b0;
    RegWrite = 1'b1;
    MemRead = 1'b0;
    MemWrite = 1'b0;
    Branch = 1'b0;
    ALUOp[1] = 1'b1;
    ALUOp[0] = 1'b1;
    end 
    
    
4'b1100:  //SUB
    begin
    RegDst = 1'b1;
    AluSrc = 1'b0;
    MemToReg = 1'b0;
    RegWrite = 1'b1;
    MemRead = 1'b0;
    MemWrite = 1'b0;
    Branch = 1'b0;
    ALUOp[1] = 1'b1;
    ALUOp[0] = 1'b0;
    end 

4'b1101:   //SUBI
    begin
    RegDst = 1'b0;
    AluSrc = 1'b1;
    MemToReg = 1'b0;
    RegWrite = 1'b1;
    MemRead = 1'b0;
    MemWrite = 1'b0;
    Branch = 1'b0;
    ALUOp[1] = 1'b1;
    ALUOp[0] = 1'b1;
    end 

4'b0001:   //SLTI
    begin
    RegDst = 1'b0;
    AluSrc = 1'b1;
    MemToReg = 1'b0;
    RegWrite = 1'b1;
    MemRead = 1'b0;
    MemWrite = 1'b0;
    Branch = 1'b0;
    ALUOp[1] = 1'b1;
    ALUOp[0] = 1'b1;
    end 

 4'b1100:  //LW
    begin
    RegDst = 1'b0;
    AluSrc = 1'b1;
    MemToReg = 1'b1;
    RegWrite = 1'b1;
    MemRead = 1'b1;
    MemWrite = 1'b0;
    Branch = 1'b0;
    ALUOp[1] = 1'b0;
    ALUOp[0] = 1'b0;
    end 

4'b1101:  //SW
    begin
    RegDst = 1'b0;
    AluSrc = 1'b1;
    MemToReg = 1'b0;
    RegWrite = 1'b0;
    MemRead = 1'b0;
    MemWrite = 1'b1;
    Branch = 1'b0;
    ALUOp[1] = 1'b0;
    ALUOp[0] = 1'b0;
    end 

 4'b1111:  //BEQ
    begin
    RegDst = 1'b0;
    AluSrc = 1'b0;
    MemToReg = 1'b0;
    RegWrite = 1'b0;
    MemRead = 1'b0;
    MemWrite = 1'b0;
    Branch = 1'b1;
    ALUOp[1] = 1'b0;
    ALUOp[0] = 1'b1;
    end 

4'b0010:  //SLL
    begin
    RegDst = 1'b1;
    AluSrc = 1'bX;
    MemToReg = 1'b0;
    RegWrite = 1'b1;
    MemRead = 1'b0;
    MemWrite = 1'b0;
    Branch = 1'b0;
    ALUOp[1] = 1'b1;
    ALUOp[0] = 1'b0;
    end 

4'b0010:  //SRA
    begin
    RegDst = 1'b1;
    AluSrc = 1'bX;
    MemToReg = 1'b0;
    RegWrite = 1'b1;
    MemRead = 1'b0;
    MemWrite = 1'b0;
    Branch = 1'b0;
    ALUOp[1] = 1'b1;
    ALUOp[0] = 1'b0;
    end 
endcase

end

endmodule
