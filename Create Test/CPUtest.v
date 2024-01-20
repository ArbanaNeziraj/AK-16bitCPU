`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2024 02:57:38 AM
// Design Name: 
// Module Name: CPU_Test
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

module CPU_Test();
reg Clock;
initial 
begin 
#0 Clock = 1'b0;
#100 Clock=1'b0;
end

always
begin
#5 Clock=~Clock; 
end

CPU CPU(Clock);

endmodule