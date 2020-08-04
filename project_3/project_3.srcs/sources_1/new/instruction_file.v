`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2020 18:28:07
// Design Name: 
// Module Name: instruction_file
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


module instruction_file(

    );
    
    	always @(ALUCtrl or OpA or OpB) begin
		case(ALUCtrl)
		4'b0000:ALUResult = OpA & OpB;
		4'b0001:ALUResult = OpA | OpB;
		4'b0010:ALUResult = OpA + OpB;
		4'b0110:ALUResult = OpA - OpB;
		4'b0111:ALUResult = OpA < OpB?1:0;
		4'b1100:ALUResult = ~(OpA | OpB);
		endcase
	end

	//ALUOut register

	always@(posedge clk) begin
		ALUOut<=ALUResult;
	end
    
    
endmodule
