`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2020 17:25:33
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
        
    Lab1 instance1 (.A(A), .B(B), .Sel(Sel), .Sum(sum));
     
    stateMachine sm (.A(A), .B(B), .Sel(Sel), .Sum(sum)); 

    Memory mem (.a(a), .b(b), .c(c),.d(d), .y(y)); 

    
    integer i,j;
        
    initial begin
        
//        for (i = 0; i < 3; i = i + 1) begin

        
            #10 a=0;   b=0;  c=0; d=0;
            #10;A = $urandom%20;B = $urandom%20;Sel = 0; 
            #10 a=0;   b=0;  c=0; d=1;
            #10;A = $urandom%20;B = $urandom%20;Sel = 0;
        
          
        
       #10 $finish;          
    
    end;


endmodule
