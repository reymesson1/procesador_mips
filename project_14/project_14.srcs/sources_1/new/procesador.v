`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2020 19:38:52
// Design Name: 
// Module Name: procesador
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


module procesador(
    output reg [15:0] data_out,
    input [15:0] address,
    input [15:0] data_in, 
    input write_enable,
    input clk
);
    reg [15:0] memory [0:65];
    integer i;

    
    assign OpA=2;
    assign OpB=2;
    assign ALUResult=0;

    
    initial begin
    
//    $readmemh("memory_prueba.mem", memory);
    $readmemb("memory_prueba_b.mem", memory);

    end;

    always @(posedge clk) begin
        if (write_enable) begin
            memory[address] <= data_in;
        end
        data_out <= memory[address];
    end
    
    initial begin
    
    for(i=0;i<10;i=i+1)begin 
    
//        case(memory[i])
//            2'b00 : $display("trump2020");
//            2'b01 : $display("trump2021");
//            2'b10 : $display("trump2022");
//            2'b11 : $display("trump2023");
//            default : $display("default");
//        endcase
        case(memory[i])
            2'b00 : memory[64] = 31;
            2'b01 : memory[63] = 255;
            2'b10 : memory[62] = 127;
            2'b11 : memory[61] = 95;
            default : $display("default");
        endcase
    
    end
    
    
    end    
    
    
endmodule
