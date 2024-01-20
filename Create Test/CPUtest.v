`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2024 02:37:21
// Design Name: 
// Module Name: CPUtest
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


module CPUtest();
reg Clock;
reg [15:0] i;


initial
begin
for(i=0; i < 40; i=i+1) //40x nderro nga Clock 0 - 1, 40 tehe pozitive
begin
#10 Clock = 0;
#10 Clock = 1;
end

#10 $stop;
end



CPU CPU16(Clock);
endmodule
