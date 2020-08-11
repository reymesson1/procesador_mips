`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2020 17:01:54
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
    input reset,
    input clk

);

    reg [15:0] memory [0:65];
    
    initial begin
    
//    $readmemh("memory_prueba.mem", memory);
    $readmemb("memory_prueba_b.mem", memory);

    end;

    always @(posedge clk) begin
        
        if(reset == 1'b1)begin
            data_out <= #1 4'b0000; 
        end
        
        else if(write_enable==1'b1) begin
        
//            data_out <= #1 memory[data_out + 1];
            #1 case(memory[data_out + 1])
            2'b00 : memory[64] = 31;
            2'b01 : memory[63] = 255;
            2'b10 : memory[62] = 127;
            2'b11 : memory[61] = 95;
            default : $display("default");
        endcase
        
        end
    
    end
    
        always @(posedge clk) begin
        
        if(reset == 1'b1)begin
            data_out <= #1 4'b0000; 
        end
        
        else if(write_enable==1'b1) begin
        
            data_out <= #1 memory[data_out + 1];
        
        end
    
    end


endmodule
