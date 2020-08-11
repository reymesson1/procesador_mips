`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2020 17:14:49
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
    
    input clk,               // Declare input port for clock to allow counter to count up
    input rstn,              // Declare input port for reset to allow the counter to be reset to 0 when required
    output reg[3:0] out
);

always @ (posedge clk) begin
    if (! rstn)
      out <= 0;
    else
      out <= out + 1;
end

endmodule
