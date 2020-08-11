`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2020 12:48:38
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
    input clk,
    input reset,
    input [15:0] data_in,
    input we,
    input [15:0] address,
    output [15:0] data_out
    );
    
//    wire [15:0] address;


    
    memory mem(.clk(clk),.data_in(data_in),.address(address),.data_out(data_out));
    
    stateMachine(.clk(clk),.data_in(data_in),.address(address),.data_out(data_out));
    
    
endmodule
