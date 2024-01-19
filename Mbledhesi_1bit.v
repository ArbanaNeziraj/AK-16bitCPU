`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2024 12:49:12 PM
// Design Name: 
// Module Name: Mbledhesi_1bit
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


module Mbledhesi_1bit(
    input A,
    input B,
    input CIN,
    output Shuma,
    output COUT
    );
    
 assign Shuma = A ^ B ^ CIN;
 assign COUT = CIN & A | CIN & B | A & B;

endmodule
