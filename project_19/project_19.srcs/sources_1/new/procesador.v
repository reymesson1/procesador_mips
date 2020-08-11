`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2020 18:26:42
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
    input write_enable,
    input [15:0] data_in,
    input [15:0] address,
    output reg [15:0] data_out
);
    
    memory mem(.clk(clk),.reset(reset),.write_enable(write_enable),.data_in(data_in),.address(address),.data_out(data_out));

    stateMachine sm(.clk(clk),.reset(reset));    
    
endmodule