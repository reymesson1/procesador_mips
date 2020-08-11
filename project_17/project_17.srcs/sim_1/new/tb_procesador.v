`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2020 17:03:03
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

reg clk, reset, write_enable,address,data_in;
wire [15:0] data_out;
integer i;

//    output reg [15:0] data_out,
//    input [15:0] address,
//    input [15:0] data_in, 
//    input write_enable,
//    input reset,
//    input clk

procesador pro(.data_out(data_out),.address(address),.data_in(data_in),.write_enable(write_enable),.reset(reset),.clk(clk));
//procesador fc(.clk(clk),.reset(reset), .write_enable(white_enable),.data_out(data_out));

always begin
  #5  clk = ~clk; // Toggle clock every 5 ticks 
end

initial begin

    $display ("time\t clk reset enable counter");	
    $monitor ("%g\t %b   %b     %b      %b",  $time, clk, reset, write_enable, data_out);	
    clk = 1;       // initial value of clock
    reset = 0;       // initial value of reset
    write_enable = 0;      // initial value of enable
     #5  reset = 1;    // Assert the reset
     #10  reset = 0;   // De-assert the reset
     #10  write_enable = 1;  // Assert enable
     #100 write_enable = 0; // De-assert enable
     #5  $finish;      // Terminate simulation
     
          
end

endmodule
