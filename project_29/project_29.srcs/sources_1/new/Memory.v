`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2020 18:23:32
// Design Name: 
// Module Name: Memory
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


module Memory(
    output reg [31:0] data_out,
    input [31:0] address,
    input [31:0] data_in, 
    input write_enable,
    input clk
    );
    
    reg [31:0] memory [0:300];
    
    initial begin
    
//    $readmemh("memory_prueba.mem", memory);
    $readmemb("memory_prueba_b.mem", memory);

    end;
    
    always @(posedge clk) begin
        if (write_enable) begin
            memory[address] <= data_in;
        end
        data_out <= memory[address];
    end

    
endmodule
