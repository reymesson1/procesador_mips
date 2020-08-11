`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2020 18:09:32
// Design Name: 
// Module Name: tb_procesador
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


module tb_procesador();
 reg clk, write_enable,reset;
 reg [15:0] data_out_tb;
 wire [15:0] data_out;
 reg [15:0] address;
 reg [15:0] data_in;
 integer i;
 
 memory mem(.data_out(data_out), .address(address),.data_in(data_in), .write_enable(write_enable), .clk(clk));
 procesador p(.data_out(data_out_tb), .address(address), .data_in(data_in), .write_enable(write_enable), .reset(reset),.clk(clk));

always begin
   #5 clk = ~clk;  
end

initial begin

       clk = 0;
       for(i = 0;i<=65;i=i+1) begin
        #10 address = i; write_enable<=0; 
        data_out_tb = data_out;
        $display("%b", data_out);
       end;
       
end
endmodule
