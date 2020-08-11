`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2020 17:24:56
// Design Name: 
// Module Name: tb_counter
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


module tb_counter;
  reg clk;                     // Declare an internal TB variable called clk to drive clock to the design
  reg rstn;                    // Declare an internal TB variable called rstn to drive active low reset to design
  wire [3:0] out;              // Declare a wire to connect to design output

  // Instantiate counter design and connect with Testbench variables
  procesador   c0 ( .clk (clk),
                 .rstn (rstn),
                 .out (out));

  // Generate a clock that should be driven to design
  // This clock will flip its value every 5ns -> time period = 10ns -> freq = 100 MHz
  always #5 clk = ~clk;

  // This initial block forms the stimulus of the testbench
  initial begin
    // 1. Initialize testbench variables to 0 at start of simulation
    clk <= 0;
    rstn <= 0;

    // 2. Drive rest of the stimulus, reset is asserted in between
    #20   rstn <= 1;
    #80   rstn <= 0;
    #50   rstn <= 1;

    // 3. Finish the stimulus after 200ns
    #20 $finish;
  end
endmodule