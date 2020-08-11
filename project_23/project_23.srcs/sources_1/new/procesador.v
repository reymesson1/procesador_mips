`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2020 17:58:02
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

always @(posedge clk) begin

    $display("test");
    case(data_out)
    //    2'b00 : $display("case1");
    //    2'b01 : $display("case2");
    //    2'b10 : $display("case3");
    default : $display("default");
    endcase

end

//always @(posedge clk) begin

//        case(data_out)
//            2'b00 : $display("write_enable=0;rd=data_out;address=0;");//ldi
//            2'b00 : $display("1)write_enable=0;rs=data_out;address=0;2)rd=rs");//mov rd,rs
//            2'b00 : $display("1)write_enable=0;rs=data_out;address=0;2)data_in=rs;address=1;");//MOVM [M], RS 
//            2'b00 : $display("1)write_enable=0;rs=data_out;address=0;2)data_in=rs;address=1;");//MOVM RS, [M]?
//            2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd++;");//INC RD
//            2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd--;");//DEC RD
//            2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs+rd;");//addi RD
//            2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs+rd;");//addi RD
//            2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs-rd;");//sub RD
//            2'b00 : $display("1)address=0++;");//jmp RD
//            2'b00 : $display("1)address=0++;");//jz ?
//            2'b00 : $display("1)address=0++;");//jnz ?
//            2'b00 : $display("1)address=0++;");//jnz ?
//            2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs and rd;");//and RD
//            2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs or rd;");//or RD
//            2'b00 : $display("1)write_enable=0;rd=data_out;address=length-1;");//stop RD
//            default : $display("default");
//        endcase


//end

endmodule
