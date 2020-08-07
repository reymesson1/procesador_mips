`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2020 20:10:02
// Design Name: 
// Module Name: tb_mips
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


module tb_mips;

	reg clk;
	reg reset;

	mips mips_DUT(clk,reset);

	initial
		forever #5 clk=~clk;

	initial begin
	clk=0;
	reset=1;

	#10 reset=0;

	#6000 $finish;
	end

endmodule