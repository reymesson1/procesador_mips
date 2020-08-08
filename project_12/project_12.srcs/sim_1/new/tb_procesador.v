`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2020 21:05:23
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
 
 procesador uut(.data_out(data_out), .address(address), .data_in(data_in), .write_enable(write_enable), .clk(clk) );
 
 always begin
    #5 clk = ~clk;  
 end

 initial begin
 
       clk = 0;
        
//       j <= 65;
        
//       for(i = 0;i<=65;i=i+1) begin
         
//            #10 data_in = j; address = i; write_enable<=1;
//            j=j-1;
            
//       end;

       for(i = 0;i<=65;i=i+1) begin

        #10 address = i; write_enable<=0; 

        $display("%b", data_out);
       
       end;
       
      
 end
 
 
endmodule
