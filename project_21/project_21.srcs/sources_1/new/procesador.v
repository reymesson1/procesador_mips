`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2020 19:33:49
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
    input enable,
    output reg [15:0] counter_out,
    output reg [15:0] data_out
);

reg[15:0] address;
reg write_enable;
reg[15:0] data_in;
//reg[15:0] data_out;

//output reg [15:0] data_out,
//    input [15:0] address,
//    input [15:0] data_in,
//    input write_enable,
//    input clk

//    memory mem(.clk(clk),.write_enable(write_enable),.address(address),.data_in(data_in),.data_out(data_out));

    memory mem(.data_out(data_out),.address(address),.data_in(data_in),.write_enable(write_enable),.clk(clk));
    
    always @(posedge clk) begin
        
        if(reset == 1'b1)begin
            counter_out <= #1 4'b0000; 
        end
        
        else if(enable==1'b1) begin
        
            counter_out <= #1 counter_out + 1; write_enable=1; address=counter_out + 1;data_in=counter_out + 1;
        
        end
    
    end
    
    
    
endmodule
