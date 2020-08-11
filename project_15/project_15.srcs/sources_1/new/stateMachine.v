`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2020 12:48:38
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


module stateMachine(
    input clk,
    input reset,
    input [15:0] data_in,
    input we,
    input [15:0] address,
    output [15:0] data_out
    );
    
    always@(posedge clk) begin
        $display("test");
	end
    
endmodule
