module stateMachine(
    input [7:0] A,
    input [7:0] B,
    input [3:0] Sel,
    output reg [7:0] Sum    
    );
    
    reg [7:0] temp;

    initial begin
    temp = 5;
    end
    
    always @(A,B,Sel)    
            
    #10

      case (Sel)
      
      4'b0000 : begin Sum = A + B; $display("ldi");end//enviarle 5 desde el testbench
      4'b0001 : begin Sum = A + temp; $display("lw");end
      4'b0010 : begin Sum = A + B; $display("ldi");end
      4'b0011 : begin Sum = A + B; $display("ldi");end
      4'b0100 : begin Sum = A + B; $display("ldi");end
      4'b0101 : begin Sum = A + B; $display("ldi");end
      4'b0110 : begin Sum = A + B; $display("addi");end
      4'b0111 : begin Sum = A + B; $display("ldi");end
      4'b1000 : begin Sum = A + B; $display("ldi");end
      4'b1001 : begin Sum = A + B; $display("ldi");end
      4'b1010 : begin Sum = A + B; $display("ldi");end
      4'b1011 : begin Sum = A + B; $display("ldi");end
      4'b1100 : begin Sum = A + B; $display("ldi");end
      4'b1101 : begin Sum = A + B; $display("ldi");end
      4'b1110 : begin Sum = A + B; $display("ldi");end
      4'b1111 : begin Sum = A + B; $display("ldi");end

      
      default : begin Sum = A + B; $display(Sel);end
      
      endcase;
//    if (Sel == 6) begin
//        Sum  = A + B;        
//        $display("Adding more change");
//    end
//    else begin
//        $display("%b", Sel);
//        Sum = A - B;
//    end

endmodule
