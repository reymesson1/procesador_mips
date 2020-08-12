module Lab1(
    input [7:0] A,
    input [7:0] B,
    input [1:0] Sel,
    output wire [7:0] Sum
    );
    
    stateMachine instance1 (.A(A), .B(B), .Sel(y), .Sum(Sum) ); //adder8bits
    Memory instance2 ( .a(Sel), .b(Sel), .c(Sel), .d(Sel) ); //customlogic
    
endmodule
