module Lab1(
    input [7:0] A,
    input [7:0] B,
    input [3:0] Sel,
    output wire [7:0] Sum
    );
    
    adder8bits instance1 (.A(A), .B(B), .Sel(y), .Sum(Sum) );
    CustomLogic instance2 ( .a(Sel), .b(Sel), .c(Sel), .d(Sel) );    
    
endmodule
