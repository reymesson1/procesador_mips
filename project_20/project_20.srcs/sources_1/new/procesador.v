`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2020 18:47:47
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

//    memory mem(.clk(clk),.reset(reset),.write_enable(write_enable),.data_in(data_in),.address(address),.data_out(data_out));
    
    always @(posedge clk) begin
        
        if(reset == 1'b1)begin
            data_out <= #1 4'b0000; 
        end
        
        else if(write_enable==1'b1) begin
        
            data_out <= #1 data_out + 1;
        
        end
    
    end
    
    
endmodule
