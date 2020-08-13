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
    input [15:0] A,
    input [15:0] B,
    input [3:0] Sel,
    output reg [15:0] Sum    
    );
    
    integer newA;
    integer newB;
    always @(A,B,Sel)    
            
    #10
    
    if (Sel == 4'b0000) begin
//          Sum  = A;   
          $display("write_enable=0;rd=data_out;address=0;//ldi");//ldi sent to testbench
    end
    else if (Sel == 4'b0001) begin
    
//          Sum = A;        
          $display("1)write_enable=0;rs=data_out;address=0;2)rd=rs;//mov rd,rs");//mov rd,rs

    end
    else if (Sel == 4'b0010) begin
    
//          Sum  = B;        
          $display("1)write_enable=0;rs=data_out;address=0;2)data_in=rs;address=1;//MOVM [M], RS");//MOVM [M], RS 

    end
    else if (Sel == 4'b0011)
    
//        Sum  = A - 1;        
          $display("1)write_enable=0;rs=data_out;address=0;2)data_in=rs;address=1;//MOVM RS, [M]?");//MOVM RS, [M]?

    else if (Sel == 4'b0100) begin
    
//          Sum  = A+1;        
          $display("1)write_enable=0;rd=data_out;address=0;2)rd++;//INC RD");//INC RD
    end
    else if (Sel == 4'b0101) begin
    
//          Sum  = A - 1;        
          $display("1)write_enable=0;rd=data_out;address=0;2)rd--;//DEC RD");//DEC RD
    end
    else if (Sel == 4'b0110)begin
    
//        Sum  = A | B;        
          $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs+rd;//addi RD");//addi RD
          newA = A[7:4];
          newB = B[11:8];
          $display("albert %d %d = %d", newA, newB, newA+newB);
          $display("alberto %b %b %b", Sel, A[7:4],B[11:8]);    
//          Sum = newA+newB; no esta funcionando porque debo castear
//          Sum = A + B;
    end
    else if (Sel == 4'b0111)
    
//        Sum  = A | B;        
          $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs+rd;//addi RD");//addi RD

    else if (Sel == 4'b1000) begin
    
//          Sum  = A - B;        
          $display("1)write_enable=0;rd=data_out;address=0;2)rd=rs-rd;//sub RD");//sub RD
    end
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
        
    
endmodule
