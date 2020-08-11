`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2020 21:33:20
// Design Name: 
// Module Name: CustomLogic
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


module CustomLogic(
    input [1:0] a,
    input [1:0] b,
    input [1:0] c,
    input [1:0] d,
    output y
    );
    
   assign y=a&~b&~c&d | ~a&b&d | c&~&d ;

endmodule
