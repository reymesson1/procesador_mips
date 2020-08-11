`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2020 13:01:40
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

 reg clk, write_enable;
 wire [15:0] data_out;
 reg [15:0] address;
 reg [15:0] data_in;
 integer i;
 integer j;


 always begin
    #5 clk = ~clk;  
 end

initial begin

       clk = 0;

//       for(i = 0;i<=65;i=i+1) begin

//        #10 address = i; write_enable<=0; 

//        $display("%b", data_out);
       
//       end;

     

end

endmodule
