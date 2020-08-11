`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2020 13:40:24
// Design Name: 
// Module Name: tb_first_counter
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


module tb_first_counter();

reg clk, reset, enable;
wire [3:0] counter_out;

first_counter fc(.clk(clk),.reset(reset), .enable(enable),.counter_out(counter_out));

always begin
  #5  clk = ~clk; // Toggle clock every 5 ticks 
 end

initial begin

$display ("time\t clk reset enable counter");	
    $monitor ("%g\t %b   %b     %b      %b",  $time, clk, reset, enable, counter_out);	
    clk = 1;       // initial value of clock
    reset = 0;       // initial value of reset
    enable = 0;      // initial value of enable
     #5  reset = 1;    // Assert the reset
     #10  reset = 0;   // De-assert the reset
     #10  enable = 1;  // Assert enable
     #100  enable = 0; // De-assert enable
     #5  $finish;      // Terminate simulation
end

endmodule
