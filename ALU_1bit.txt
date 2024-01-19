`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2024 12:28:11 PM
// Design Name: 
// Module Name: ALU_1bit
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


module ALU_1bit(
    input A,
    input B,
    input LESS,
    input CIN,
    input Binvert,
    input [2:0] Operation,
    output Result,
    output COUT
    );
    
wire mB, JoB, DHE, OSE, XOR, MBLEDHESI;

assign JoB = ~B;

mux2n1 muxB(B, joB, Binvert, mB);

assign DHE = A & mB;
assign OSE = A | mB;
assign XOR = A ^ mB;

Mbledhesi_1bit Adder(A, mB, CIN, MBLEDHESI, COUT);

mux4n1 mux4n1(DHE, OSE, MBLEDHESI, LESS, Operation, Result);

mux8n1 mux8n1(DHE, LESS, OSE, XOR, MBLEDHESI, Operation, Result);

endmodule
