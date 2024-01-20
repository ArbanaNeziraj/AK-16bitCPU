`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 03:53:53
// Design Name: 
// Module Name: DataMemoryTest
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


module DataMemoryTest();

 reg [15:0] Address;
    reg [15:0] WriteData;
    reg MemWrite,MemRead, Clock; 
    wire [15:0] ReadData;
initial
    begin
   // Vendosni vlerat fillestare
        Address = 16'd10;
        WriteData = 16'd1234;
        MemWrite = 1;
        MemRead = 0;
        Clock = 0;

        // Prisni një cikël klok
        #5 Clock = 1;

        // Ndërro vlerën e Address dhe WriteData
        Address = 16'd20;
        WriteData = 16'd5678;
        MemWrite = 1;
        #5 Clock = 0;

        // Prit një cikël klok
        #5 Clock = 1;

        // Ndryshimi i vlerës së MemRead
        MemRead = 1;
        #5 Clock = 0;

        // Prit një cikël klok
        #5 Clock = 1;

        // Ndalo simulimin
        $stop;
    end
endmodule
