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
    output [15:0] ReadRS,
    output [15:0] ReadRT,
    input RegWrite,
    input Clock
    );
reg [15:0] Registers[3:0];

integer i;
initial
begin
    for(i=0;i<4;i=i+1) begin
       Registers[i]=16'd0;
    end
end

always @(posedge Clock)
    begin
       if(RegWrite) Registers[RD] <= WriteData;
    end

assign ReadRS = Registers[RS];
assign ReadRT = Registers[RT];

endmodule