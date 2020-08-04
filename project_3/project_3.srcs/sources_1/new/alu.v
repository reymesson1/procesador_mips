`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2020 18:26:39
// Design Name: 
// Module Name: alu
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


module alu(
    input [1:0] op,
    input Function,
    output reg[3:0] control
    );
    
    always@(op or Function)begin
	casex({op,Function})
		8'b00_xxxxxx:control=4'b0010; //lw / sw
		8'b01_xxxxxx:control=4'b0110; //beq
		8'b1x_xx0000:control=4'b0010; //add
		8'b1x_xx0010:control=4'b0110; //sub
		8'b1x_xx0100:control=4'b0000; //and
		8'b1x_xx0101:control=4'b0001; //or
		8'b1x_xx1010:control=4'b0111; //slt
	endcase
end
    
    
    
endmodule
