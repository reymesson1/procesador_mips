`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2020 20:06:31
// Design Name: 
// Module Name: alucontrol
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


module alucontrol(AluOp,FnField,AluCtrl);

input [1:0] AluOp;
input [5:0] FnField; //for R-type instruction

output reg [3:0] AluCtrl;


always@(AluOp or FnField)begin
	casex({AluOp,FnField})
		8'b00_xxxxxx:AluCtrl=4'b0010; //lw / sw
		8'b01_xxxxxx:AluCtrl=4'b0110; //beq
		8'b1x_xx0000:AluCtrl=4'b0010; //add
		8'b1x_xx0010:AluCtrl=4'b0110; //sub
		8'b1x_xx0100:AluCtrl=4'b0000; //and
		8'b1x_xx0101:AluCtrl=4'b0001; //or
		8'b1x_xx1010:AluCtrl=4'b0111; //slt
	endcase
end

endmodule