`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2020 18:26:16
// Design Name: 
// Module Name: procesador
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


module procesador(
    input [7:0] A,
    input [7:0] B,
    input [3:0] Sel,
    output wire [7:0] Sum
    );
            
    stateMachine instance1 (.A(A), .B(B), .Sel(y), .Sum(Sum) );
//    Memory instance2 ( .a(Sel), .b(Sel), .c(Sel), .d(Sel) );    

endmodule