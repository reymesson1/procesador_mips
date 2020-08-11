`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2020 21:37:08
// Design Name: 
// Module Name: TestBench_Lab1
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


module TestBench_Lab1();

    reg [7:0] A;
    reg [7:0] B;
    reg [1:0] Sel;
    wire [7:0] sum;
    
    reg [1:0] a;
    reg [1:0] b;
    reg [1:0] c;
    reg [1:0] d;
    
    wire y;
    
    Lab1 instance1 (.A(A), .B(B), .Sel(Sel), .Sum(sum));
     
    adder8bits Suma (.A(A), .B(B), .Sel(Sel), .Sum(sum)); 

    CustomLogic test (.a(a), .b(b), .c(c),.d(d), .y(y)); 

    
    integer i,j;
        
    initial begin
        
        for (i = 0; i < 3; i = i + 1) begin

        
            #10 a=0;   b=0;  c=0; d=0;
            #10;A = $urandom%20;B = $urandom%20;Sel = y; 
            #10 a=0;   b=0;  c=0; d=1;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;
            #10 a=0;   b=0;  c=1; d=0;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;
            #10 a=0;   b=0;  c=1; d=1;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;
            #10 a=0;   b=1;  c=0; d=0;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;        
            #10 a=0;   b=1;  c=0; d=1;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;        
            #10 a=0;   b=1;  c=1; d=0;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;                
            #10 a=0;   b=1;  c=1; d=1;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;                
            #10 a=1;   b=0;  c=0; d=0;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;                
            #10 a=1;   b=0;  c=0; d=1;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;                
            #10 a=1;   b=0;  c=1; d=0;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;                
            #10 a=1;   b=0;  c=1; d=1;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;        
            #10 a=1;   b=1;  c=0; d=0;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;        
            #10 a=1;   b=1;  c=0; d=1;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;                
            #10 a=1;   b=1;  c=1; d=0;
            #10;A = $urandom%20;B = $urandom%20;Sel = y;        
            #10 a=1;   b=1;  c=1; d=1;
            #10;A = $urandom%20;B = $urandom%20;Sel = y; 
            
          end;       
        
          
        
       #10 $finish;          
    
    end;
    
endmodule
