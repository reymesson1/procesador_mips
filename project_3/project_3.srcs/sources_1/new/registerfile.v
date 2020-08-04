`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2020 18:26:16
// Design Name: 
// Module Name: registerfile
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


module registerfile(
    output reg [15:0] data_out,
    input [15:0] address,
    input [15:0] data_in, 
    input write_enable,
    input clk
);
    reg [15:0] memory [0:31];
    //int memory[255];

    always @(posedge clk) begin
        if (write_enable) begin
            memory[address] <= data_in;
        end
        data_out <= memory[address];
    end

endmodule
