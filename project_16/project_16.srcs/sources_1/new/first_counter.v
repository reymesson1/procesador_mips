`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2020 13:35:40
// Design Name: 
// Module Name: first_counter
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


module first_counter(
    input clk,
    input reset,
    input enable,
    output reg [3:0] counter_out
    );
    
//    wire clk;
//    wire reset;
//    wire enable;
    
//    reg[3:0] counter_out;
    
    always @(posedge clk) begin
        
        if(reset == 1'b1)begin
            counter_out <= #1 4'b0000; 
        end
        
        else if(enable==1'b1) begin
        
            counter_out <= #1 counter_out + 1;
        
        end
    
    end
    
    
    
endmodule
