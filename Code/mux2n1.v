`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2024 12:46:37 PM
// Design Name: 
// Module Name: mux2n1
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


module mux2n1(
    input Hyrje0,
    input Hyrje1,
    input S,
    output Dalja
    );
    
    assign Dalja = S ? Hyrja1 : Hyrja0;
    
endmodule
