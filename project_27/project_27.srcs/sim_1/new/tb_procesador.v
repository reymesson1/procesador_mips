`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2020 18:30:19
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

    reg [15:0] A;
    reg [15:0] B;
    reg [3:0] Sel;
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

    
    procesador pro (.A(A), .B(B), .Sel(Sel), .Sum(sum));
     
    stateMachine state (.A(A), .B(B), .Sel(Sel), .Sum(sum)); 
    

    Memory mem(.data_out(data_out), .address(address), .data_in(data_in),.write_enable(write_enable),.clk(clk) );
    
    always begin
        #5 clk = ~clk;  
    end

    
    integer i,j;
        
    initial begin
    
        clk = 0;
        j = 2;


        #10 address = 3; write_enable<=0; $display("%b", data_out);
        #10 address = 3; write_enable<=0; $display("%b", data_out);
        #10 address = 59; write_enable <= 1; data_in = data_out[3:0];
        #10 address = 60; write_enable <= 1; data_in = data_out[7:4];
        #10 address = 61; write_enable <= 1; data_in = data_out[11:8];

        for(i=0;i<65;i=i+1) begin
        
            #10 address = i; write_enable<=0; $display("%b", data_out);           
        
        end

        
//        #10 address = 3; write_enable<=0; $display("%b", data_out);
//        #10 address = 3; write_enable<=0; $display("%b", data_out);
//        #10 a=0;   b=0;  c=0; d=0;
//        #10 a=0;   b=0;  c=0; d=0;
//        #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//        #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];

        //escribir en la posicion 60 A
        //escribir en la posicion 60 B
//        #10 address = 60; write_enable <= 1; data_in = data_out[7:4];
//        #10 address = 60; write_enable <= 1; data_in = data_out[7:4];
//        #10 address = 60; write_enable<=0; A=data_out; $display("%b", data_out);
//        #10 address = 60; write_enable<=0; A=data_out; $display("%b", data_out);


        
//        for (i = 0; i < 3; i = i + 1) begin

//            #10 address = 0; write_enable<=0; $display("%b", data_out);
//            #10 address = 1; write_enable<=0; $display("%b",data_out);
//            #10 address = 2; write_enable<=0; $display("%b",data_out);
//            #10 address = 3; write_enable<=0; $display("%b",data_out);

        
//            #10 a=0;   b=0;  c=0; d=0;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=0;   b=0;  c=0; d=1;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=0;   b=0;  c=1; d=0;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=0;   b=0;  c=1; d=1;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=0;   b=1;  c=0; d=0;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=0;   b=1;  c=0; d=1;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=0;   b=1;  c=1; d=0;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=0;   b=1;  c=1; d=1;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=1;   b=0;  c=0; d=0;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=1;   b=0;  c=0; d=1;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=1;   b=0;  c=1; d=0;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=1;   b=0;  c=1; d=1;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=1;   b=1;  c=0; d=0;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=1;   b=1;  c=0; d=1;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=1;   b=1;  c=1; d=0;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
//            #10 a=1;   b=1;  c=1; d=1;
//            #10;A = $urandom%20;B = $urandom%20;Sel = data_out[3:0];
            
//          end;       
        
          
        
       #10 $finish;          
    
    end;


endmodule
