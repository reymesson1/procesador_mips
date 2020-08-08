`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2020 16:36:49
// Design Name: 
// Module Name: tb_stateMachine
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


module tb_stateMachine();

wire ProductoA;
wire ProductoB;
wire YS;
reg clk,E,P,reset;
reg [1:0] Moneda;
integer i;
integer j;

reg write_enable;
wire [15:0] data_out;
wire [15:0] data_out2;
reg [15:0] address;
reg [15:0] data_in;

        
    stateMachine uuts(Moneda,E,P,clk,reset,YS);
    
    memory mem(.data_out2(data_out2),.data_out(data_out), .address(address), .data_in(data_in), .write_enable(write_enable), .clk(clk) ); 


 always #4 clk = ~clk; 
initial begin
    {clk,E,P,reset,Moneda}<=0;
    P <= 1;
    #1 reset <=1;
    #2 E <= 1;
    
    j <= 65535;
    
    for(i = 0;i<200;i=i+1) begin
        #1 Moneda = $random;
    end
    
//    for(i = 0;i<=65535;i=i+1) begin
     
//        #10 data_in = j; address = i; write_enable<=1;
//        j=j-1;
        
//    end;

    
    for(i = 0;i<20;i=i+1) begin
        #10 address = i; write_enable<=0; 
    end
    
    
    
    
end

endmodule