`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 22:18:58
// Design Name: 
// Module Name: DataPath
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


module Datapath(
input Clock, //HYRJE NGA CPU 
input RegDst, Branch, MemRead, 
MemWrite, RegWrite, MemToReg, ALUSrc, //HYRJET NGA CU - TELAT CU_OUT_x
input [1:0] ALUOp, //HYRJE NGA CU - TELAT CU_OUT_x
output [2:0] opcode, //DALJE PER NE CU - TELI D_OUT_1
output Dalja
);

reg[15:0] PC_initial; // Regjistri PC
wire [15:0] PC_next, PC4, pcbne; //TELAT: T1, T2, T3, T4
wire [15:0] instruction, instr; //TELI T5
wire [2:0] mux_regfile; //TELI T6
wire[15:0] readData1, readData2, writeData, //TELAT T7-T9 
mux_ALU, ALU_Out, Zgjerimi, memToMux, //TELAT T10-T13
shifter2beq, branchAdderToMux, beqAddress, jumpAddress; //TELAT T14-T18 
wire[3:0] ALUCtrl; //TELI T19
wire zerof, overflow, carryout; // TELAT T20-T22
wire andMuxBranch; //TELI T23

initial
begin
    PC_initial = 16'd10; //inicializimi fillesar i PC ne adresen 10
end

always@(posedge Clock)
begin
    PC_initial <= PC_next; //azhurimi i PC ne cdo teh pozitiv me adresen e ardhshme
    
end


assign PC4 = PC_initial + 2; 


assign shifter2beq = {{8{instruction[6]}}, instruction[6:0], 1'b00};
 

InstructionMemory IM(pc_initial, instruction); 

assign mux_regfile = (RegDst == 1'b1) ? instruction[6:4] : instruction[9:7]; 

assign Zgjerimi = {{9{instruction[6]}}, instruction[6:0]};  

RegisterFile RF(instruction[12:10], instruction[9:7], mux_regfile, writeData, RegWrite, Clock, readData1, readData2 ); 
 
assign mux_ALU = (ALUSrc == 1'b1) ? Zgjerimi : readData2; 

ALUControl AC(ALUOp, instr[3:0], instruction[15:13], ALUCtrl); 


ALU16 ALU (readData1, mux_ALU, ALUCtrl[3], ALUCtrl[2:0], zerof, ALU_Out, overflow, carryout);


DataMemory DM(ALU_Out, MemWrite, MemRead, Clock, memToMux);


assign writeData = (MemToReg == 1'b1) ? memToMux : ALU_Out;


assign andMuxBranch = ~(zerof & Branch);


assign beqAddress = PC4 + shifter2beq; 


assign PC_next = (andMuxBranch == 1'b1) ? beqAddress : PC4;


assign opcode = instruction[15:13];

assign Dalja=ALU_Out;

endmodule