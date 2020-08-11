`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2020 22:05:30
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

    reg [7:0] A;
    reg [7:0] B;
    reg [1:0] Sel;
    wire [7:0] sum;
    
    reg [1:0] a;
    reg [1:0] b;
    reg [1:0] c;
    reg [1:0] d;
    
    wire y;
    
    reg clk, write_enable,reset;
    wire [15:0] data_out;
    reg [15:0] address;
    reg [15:0] data_in;
    
    integer i;

    procesador p(.A(A), .B(B),.Sel(Sel),.Sum(sum));
    
    stateMachine sm( .A(A),.B(B),.Sel(Sel),.Sum(sum) );
    
    Memory mem(.a(a), .b(b), .c(c), .d(d), .y(y), .clk(clk),.address(address),.data_in(data_in),.data_out(data_out));
    
    always begin
        #5 clk = ~clk;  
    end
            
    initial begin
    
            clk = 0;
            
            for(i = 0;i<=65;i=i+1) begin
                #10 address = i; write_enable<=0; 
//                $display("%b", data_out[0] + " " + data_out[1] + " " + data_out[2] + " " + data_out[3] );
//                $display("%b", data_out  );
                #10;A = 4'b1101;B = 4'b1101 ;Sel = data_out; 


            end;
                        
        
            #10 a=0;   b=0;  c=0; d=0;
//            #10;A = $urandom%20;B = $urandom%20;Sel = y; 
            #10;A = 5;B = 5;Sel = y; 
            #10 a=0;   b=0;  c=0; d=1;
            #10;A = 4'b1101;B = 4'b1101 ;Sel = data_out; 
//            #10;A = $urandom%20;B = $urandom%20;Sel = y;
            #10 a=0;   b=0;  c=1; d=0;
            #10;A = 4'b0001;B = 4'b0101 ;Sel = data_out; 
//            #10;A = $urandom%20;B = $urandom%20;Sel = y;
            #10 a=0;   b=0;  c=1; d=1;
            #10;A = 4'b0101;B = 4'b0101 ;Sel = data_out;             
//            #10;A = $urandom%20;B = $urandom%20;Sel = y;


    end
    
endmodule
