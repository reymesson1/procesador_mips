`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2020 17:19:20
// Design Name: 
// Module Name: stateMachine
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


module stateMachine( //adder8bits
    input [7:0] A,
    input [7:0] B,
    input [1:0] Sel,
    output reg [7:0] Sum    
    );
    always @(A,B,Sel)    
            
    #10
    
    if (Sel == 0)
        Sum  = A + B;        
        
    else
        Sum = A - B;

endmodule
