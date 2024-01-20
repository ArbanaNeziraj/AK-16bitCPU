`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2024 15:24:58
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(
input wire[15:0] Address,
input wire[15:0] WriteData,
input wire MemWrite,
input wire MemRead,
input wire Clock,
output wire[15:0] ReadData
    );
    reg[7:0] dMem[127:0];

initial $readmemh("dataMemory.mem", dMem);

always@(posedge Clock)
begin
    if(MemWrite) 
        begin
            //bigEndian
            dMem[Address + 16'd0] <= WriteData[15:8];
            dMem[Address + 16'd1] <= WriteData[7:0];
           end
end

always@(negedge Clock)
begin
$writememb("dataMemory.mem", dMem);
end

 
 assign ReadData[15:8] = dMem[Address + 16'd0];
 assign ReadData[7:0] = dMem[Address + 16'd1];

endmodule
