`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 03:38:04
// Design Name: 
// Module Name: IntructionMemoryTest
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


module IntructionMemoryTest();
    reg [15:0] PC;
    wire [15:0] Instruction;
    initial
    begin
    #0 PC=16'd10;// Testi fillon me vlerën e PC = 10// Prit një cikël klok
    #5 PC=16'd12;// Ndryshimi i vlerës së PC dhe vlera e Instruction
    #5 PC=16'd14;
    #5 PC=16'd16;
    #5 PC=16'd18;
    #5 $stop; // Ndalo simulimin
end
    InstructionMemory IM(PC,Instruction);
endmodule

