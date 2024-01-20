`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 13:12:13
// Design Name: 
// Module Name: registerFile
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


module RegisterFile(
    input [1:0] RS,
    input [1:0] RT,
    input [1:0] RD,
    input [15:0] WriteData,
    input [15:0] PC,
    output [15:0] ReadRS,
    output [15:0] ReadRT,
    output reg [15:0] PC_out,
    input RegWrite,
    input Clock
    );
    
    PCImp PC_implementer(
    .PC(PC_out),
    .branch_offset(branch_offset),
    .branch_signal(branch_signal),
    .PC_out(PC_out)
    );


    reg[15:0] Registers[3:0];
    reg [15:0] branch_offset;
    reg branch_signal;

       
    // Shkruaj ne regjiter
    always @(posedge Clock)
    begin
        if (RegWrite) Registers[RD] <= WriteData; // Fix typo in Registers
    end
    
    // Lexo regjistrat ReadData1, ReadData2
    assign ReadRS = Registers[RS];
    assign ReadRT = Registers[RT];
    
   
    
    // Fix if condition syntax and use non-blocking assignment for PC_out
    always @(posedge Clock)
    begin
        if (ReadRS == ReadRT)
            PC_out <= PC_out + branch_offset;
        else
            PC_out <= PC_out + 2;
    end

endmodule
    
