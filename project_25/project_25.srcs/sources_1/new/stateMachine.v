`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2020 21:55:30
// Design Name: 
// Module Name: stateMachine
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


module stateMachine( //adder8bit
    input [7:0] A,
    input [7:0] B,
    input [1:0] Sel,
    output reg [7:0] Sum    
    );
    
    always @(A,B,Sel)    
            
    #10
    
    if (Sel == 4'b0000)
//        Sum  = A + B;   
          $display("write_enable=0;rd=data_out;address=0;//ldi");//ldi
        
    else if (Sel == 4'b0001)
    
//        Sum  = A + B;        
          $display("1)write_enable=0;rs=data_out;address=0;2)rd=rs;//mov rd,rs");//mov rd,rs

    else if (Sel == 4'b0010)
    
//        Sum  = A + 1;        
          $display("1)write_enable=0;rs=data_out;address=0;2)data_in=rs;address=1;//MOVM [M], RS");//MOVM [M], RS 

    else if (Sel == 4'b0011)
    
//        Sum  = A - 1;        
          $display("1)write_enable=0;rs=data_out;address=0;2)data_in=rs;address=1;//MOVM RS, [M]?");//MOVM RS, [M]?

    else if (Sel == 4'b0100)
    
//        Sum  = A & B;        
          $display("1)write_enable=0;rd=data_out;address=0;2)rd++;//INC RD");//INC RD

    else if (Sel == 4'b0101)
    
//        Sum  = A | B;        
          $display("1)write_enable=0;rd=data_out;address=0;2)rd--;//DEC RD");//DEC RD

    else if (Sel == 4'b0110)
    
//        Sum  = A | B;        
          $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs+rd;//addi RD");//addi RD

    else if (Sel == 4'b0111)
    
//        Sum  = A | B;        
          $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs+rd;//addi RD");//addi RD

    else if (Sel == 4'b1000)
    
//        Sum  = A | B;        
          $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs-rd;//sub RD");//sub RD

    else if (Sel == 4'b1001)
    
//        Sum  = A | B;        
          $display("1)address=0++;//jmp RD");//jmp RD

    else if (Sel == 4'b1010)
    
//        Sum  = A | B;        
          $display("1)address=0++;//jz ?");//jz ?

    else if (Sel == 4'b1011)
    
//        Sum  = A | B;        
          $display("1)address=0++;//jnz ?");//jnz ?

    else if (Sel == 4'b1100)
    
//        Sum  = A | B;        
          $display("1)address=0++;//jnz ?");//jnz ?
    else if (Sel == 4'b1101)
    
//        Sum  = A | B;        
          $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs and rd;//and RD");//and RD

    else if (Sel == 4'b1110)
    
//        Sum  = A | B;        
          $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs or rd;//or RD");//or RD
    else if (Sel == 4'b1111)
    
//        Sum  = A | B;        
          $display("1)write_enable=0;rd=data_out;address=length-1;//stop RD");//stop RD

    else
//        Sum = A + B;
        $display("default");//stop RD
        
//        case(data_out)
//            2'b00 : $display("write_enable=0;rd=data_out;address=0;");//ldi
//            2'b00 : $display("1)write_enable=0;rs=data_out;address=0;2)rd=rs");//mov rd,rs
//            2'b00 : $display("1)write_enable=0;rs=data_out;address=0;2)data_in=rs;address=1;");//MOVM [M], RS 
//            2'b00 : $display("1)write_enable=0;rs=data_out;address=0;2)data_in=rs;address=1;");//MOVM RS, [M]?
//            *2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd++;");//INC RD
//            *2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd--;");//DEC RD
//            *2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs+rd;");//addi RD
//            (2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs+rd;");//addi RD
//            *2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs-rd;");//sub RD
//            2'b00 : $display("1)address=0++;");//jmp RD
//            2'b00 : $display("1)address=0++;");//jz ?
//            2'b00 : $display("1)address=0++;");//jnz ?
//            2'b00 : $display("1)address=0++;");//jnz ?
//            *2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs and rd;");//and RD
//            *2'b00 : $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs or rd;");//or RD
//            2'b00 : $display("1)write_enable=0;rd=data_out;address=length-1;");//stop RD
//            default : $display("default");
//        endcase

    
endmodule
