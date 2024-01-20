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
       
        #5 Clock = 1;

        RS = 2'b01;
        RT = 2'b10;
        RD = 2'b11;
        #5 Clock = 0;

        #5 Clock = 1;

        WriteData = 16'd5678;
        #5 Clock = 0;

        #5 Clock = 1;

        PC = 16'd20;
        #5 Clock = 0;

        #5 Clock = 1;

        RegWrite = 0;
        #5 Clock = 0;

        #5 Clock = 1;

        PC_out = 16'd30;
        #5 Clock = 0;

        #5 Clock = 1;

        $stop;
    end
endmodule
