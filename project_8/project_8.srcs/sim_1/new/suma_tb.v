`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2020 20:01:29
// Design Name: 
// Module Name: suma_tb
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


module suma_tb();

reg [15:0] a;
reg [15:0] b;
wire [15:0] suma;


alu sum( .a(a), .b(b), .suma(suma) );

initial begin

    a=10;
    b=10;

end




endmodule
