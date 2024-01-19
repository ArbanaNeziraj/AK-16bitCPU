`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2024 02:25:24 PM
// Design Name: 
// Module Name: mbledhesi_16bit
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


module mbledhesi_16bit(
    input [15:0] A,
    input [15:0] B,
    output [15:0] Result,
    output CarryOut
    );
    
wire [14:0] COUT;

MBLEDHESI1b MBLEDHESI0(A[0], B[0],    1'b0, Result[0], COUT[0]);
MBLEDHESI1b MBLEDHESI1(A[1], B[1], COUT[0], Result[1], COUT[1]);
MBLEDHESI1b MBLEDHESI2(A[2], B[2], COUT[1], Result[2], COUT[2]);
MBLEDHESI1b MBLEDHESI3(A[3], B[3], COUT[2], Result[3], COUT[3]);
MBLEDHESI1b MBLEDHESI4(A[4], B[4], COUT[3], Result[4], COUT[4]);
MBLEDHESI1b MBLEDHESI5(A[5], B[5], COUT[4], Result[5], COUT[5]);
MBLEDHESI1b MBLEDHESI6(A[6], B[6], COUT[5], Result[6], COUT[6]);
MBLEDHESI1b MBLEDHESI7(A[7], B[7], COUT[6], Result[7], COUT[7]);
MBLEDHESI1b MBLEDHESI8(A[8], B[8], COUT[7], Result[8], COUT[8]);
MBLEDHESI1b MBLEDHESI9(A[9], B[9], COUT[8], Result[9], COUT[9]);
MBLEDHESI1b MBLEDHESI10(A[10], B[10], COUT[9], Result[10], COUT[10]);
MBLEDHESI1b MBLEDHESI11(A[11], B[11], COUT[10], Result[11], COUT[11]);
MBLEDHESI1b MBLEDHESI12(A[12], B[12], COUT[11], Result[12], COUT[12]);
MBLEDHESI1b MBLEDHESI13(A[13], B[13], COUT[12], Result[13], COUT[13]);
MBLEDHESI1b MBLEDHESI14(A[14], B[14], COUT[13], Result[14], COUT[14]);
MBLEDHESI1b MBLEDHESI15(A[15], B[15], COUT[14], Result[15], CarryOut);

endmodule
