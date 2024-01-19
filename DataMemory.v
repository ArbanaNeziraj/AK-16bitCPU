`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
<<<<<<< HEAD
// Create Date: 01/19/2024 09:50:58 PM
=======
// Create Date: 19.01.2024 15:24:58
>>>>>>> eca4e703d62e093eb2223c5e00eab103893249cc
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
<<<<<<< HEAD
    input wire[15:0] Address,
    input wire[15:0] WriteData,
    input wire MemWrite,
    input wire MemRead,
    input wire Clock,
    output wire [15:0] ReadData
    );
    
    reg[7:0] dataMem[127:0];

initial
$readmemb("dataMemory.mem", dataMem);
=======
input wire[15:0] Address,
input wire[15:0] WriteData,
input wire MemWrite,
input wire MemRead,
input wire Clock,
output wire[15:0] ReadData
    );
    reg[7:0] dMem[127:0];

initial $readmemh("dataMemory.mem", dMem);
>>>>>>> eca4e703d62e093eb2223c5e00eab103893249cc

always@(posedge Clock)
begin
    if(MemWrite) 
        begin
            //bigEndian
<<<<<<< HEAD
            dataMem[Address + 16'd0] <= WriteData[15:8];
            dataMem[Address + 16'd1] <= WriteData[7:0];
=======
            dMem[Address + 16'd0] <= WriteData[15:8];
            dMem[Address + 16'd1] <= WriteData[7:0];
>>>>>>> eca4e703d62e093eb2223c5e00eab103893249cc
           end
end

always@(negedge Clock)
begin
<<<<<<< HEAD
$writememb("dataMemory.mem", dataMem);
end

 
assign ReadData[15:8] = dataMem[Address + 16'd0];
assign ReadData[7:0] = dataMem[Address + 16'd1];

=======
$writememb("dataMemory.mem", dMem);
end

 
 assign ReadData[15:8] = dMem[Address + 16'd0];
 assign ReadData[7:0] = dMem[Address + 16'd1];
>>>>>>> eca4e703d62e093eb2223c5e00eab103893249cc

endmodule
