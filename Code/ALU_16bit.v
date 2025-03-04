`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2024 12:09:03 PM
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


module ALU_16bit(
    input [15:0] A,
    input [15:0] B,
    input Bnegate,
    input [2:0] Operation,
    output Zero,
    output [15:0] Result,
    output Overflow,
    output CarryOut
    );

wire [14:0] COUT;

    
    ALU1 ALU0(A[0],   B[0],  BNegate,   BNegate, Result[15], Operation, Result[0], COUT[0]);
    ALU1 ALU1(A[1],   B[1],  COUT[0],   BNegate,  0, Operation, Result[1],  COUT[1]); 
    ALU1 ALU2(A[2],   B[2],  COUT[1],   BNegate,  0, Operation, Result[2],  COUT[2]);
    ALU1 ALU3(A[3],   B[3],  COUT[2],   BNegate,  0, Operation, Result[3],  COUT[3]);
    ALU1 ALU4(A[4],   B[4],  COUT[3],   BNegate,  0, Operation, Result[4],  COUT[4]);
    ALU1 ALU5(A[5],   B[5],  COUT[4],   BNegate,  0, Operation, Result[5],  COUT[5]);
    ALU1 ALU6(A[6],   B[6],  COUT[5],   BNegate,  0, Operation, Result[6],  COUT[6]);
    ALU1 ALU7(A[7],   B[7],  COUT[6],   BNegate,  0, Operation, Result[7],  COUT[7]);
    ALU1 ALU8(A[8],   B[8],  COUT[7],   BNegate,  0, Operation, Result[8],  COUT[8]);
    ALU1 ALU9(A[9],   B[9],  COUT[8],   BNegate,  0, Operation, Result[9],  COUT[9]);
    ALU1 ALU10(A[10], B[10], COUT[9],   BNegate,  0, Operation, Result[10], COUT[10]);
    ALU1 ALU11(A[11], B[11], COUT[10],  BNegate,  0, Operation, Result[11], COUT[11]);
    ALU1 ALU12(A[12], B[12], COUT[11],  BNegate,  0, Operation, Result[12], COUT[12]);
    ALU1 ALU13(A[13], B[13], COUT[12],  BNegate,  0, Operation, Result[13], COUT[13]);
    ALU1 ALU14(A[14], B[14], COUT[13],  BNegate,  0, Operation, Result[14], COUT[14]);
    ALU1 ALU15(A[15], B[15], COUT[14],  BNegate,  0, Operation, Result[15], CarryOut);

assign Zero = ~(Result[0] | Result[1] | 
                Result[2] | Result[3] | 
                Result[4] | Result[5] | 
                Result[6] | Result[7] | 
                Result[8] | Result[9] | 
                Result[10] | Result[11] | 
                Result[12] | Result[13] | 
                Result[14] | Result[15] ); 
                
assign Overflow = COUT[14] ^ CarryOut;

endmodule
