`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 04:32:15
// Design Name: 
// Module Name: RegisterFileTest
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


module RegisterFileTest();
 reg [1:0] RS;
    reg [1:0] RT;
    reg [1:0] RD;
    reg [15:0] WriteData;
    reg [15:0] PC;
    wire [15:0] ReadRS;
    wire [15:0] ReadRT;
    reg [15:0] PC_out;
    reg RegWrite;
    reg Clock;
    
    initial
    begin
       
        // Prisni një cikël klok
        #5 Clock = 1;

        // Ndërro vlerat e RS, RT, dhe RD
        RS = 2'b01;
        RT = 2'b10;
        RD = 2'b11;
        #5 Clock = 0;

        // Prit një cikël klok
        #5 Clock = 1;

        // Ndrysho vlerën e WriteData
        WriteData = 16'd5678;
        #5 Clock = 0;

        // Prit një cikël klok
        #5 Clock = 1;

        // Ndrysho vlerën e PC
        PC = 16'd20;
        #5 Clock = 0;

        // Prit një cikël klok
        #5 Clock = 1;

        // Ndrysho vlerën e RegWrite
        RegWrite = 0;
        #5 Clock = 0;

        // Prit një cikël klok
        #5 Clock = 1;

        // Ndrysho vlerën e PC_out
        PC_out = 16'd30;
        #5 Clock = 0;

        // Prit një cikël klok
        #5 Clock = 1;

        // Ndalo simulimin
        $stop;
    end
endmodule
