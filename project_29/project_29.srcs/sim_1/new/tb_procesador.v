`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2020 22:15:10
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

reg [31:0] A;
reg [31:0] B;
reg [31:0] temp;
reg [31:0] tempA;
reg [31:0] tempB;
reg [31:0] op;
reg clk, write_enable,reset;
wire [31:0] data_out;
reg [31:0] address;
reg [31:0] data_in;

    procesador pro(.data_out(data_out), .address(address), .data_in(data_in),.write_enable(write_enable),.clk(clk) );

    always begin
        #5 clk = ~clk;  
    end

    
    integer i,j;
        
    initial begin
    
        clk = 0;
        j = 2;

         #10 address = 3; write_enable <= 0;$display("%b", data_out);
         #10 address = 3; write_enable <= 0;$display("%b", data_out);

         temp = data_out;
         op = temp[3:0];
         A = temp[11:4];
         B = temp[19:12];
         
         case(op) 
          
          4'b0000 : begin A = 5; $display("ldi"); end
          4'b0001 : begin A = B; $display("mov");$display(A);$display(B);  end
          4'b0010 : begin #10 address = 30; write_enable <= 1; data_in=B;$display("mov2");$display(A);$display(B); end //listo
          4'b0011 : begin 
                        #10 address = 35-1; write_enable <=1; data_in = 12;
                        #10 address = 35-1; write_enable <=0; $display("%b", data_out ); B = data_out;
                        #10 address = 35-1; write_enable <=0; $display("%b", data_out ); B = data_out;
                        $display("mov3");  
                    end//listo
          4'b0100 : begin B = B + 1; $display("inc"); end
          4'b0101 : begin A = A - 1; $display("dec"); end
          4'b0110 : begin B = B + 5; $display("adi"); end
          4'b0111 : begin A = A + B; $display("add"); end
          4'b1000 : begin A = B - A ; $display("sub %d %d ", A,B); end//listo
          4'b1001 : begin #10 address = 10; write_enable <= 1; $display("jmp"); end//listo
          4'b1010 : begin #10 address = 9; write_enable <= 1; $display("jz"); end//list
          4'b1011 : begin #10 address = 8; write_enable <= 1; $display("jnz"); end//listo
          4'b1100 : begin A = A & B; $display("and");end
          4'b1101 : begin A = A | B; $display("or");end
         default: begin $display("halt"); end//chequear mas tarde
        
        endcase
        
        //read
        for(i=0;i<65;i=i+1) begin
        
            #10 address = i; write_enable <= 0;$display("%d %b", i, data_out);
        
        end

    end

endmodule