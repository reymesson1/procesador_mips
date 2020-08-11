module procesador( //lab1
    input [7:0] A,
    input [7:0] B,
    input [3:0] Sel,
    output wire [7:0] Sum
);
    Memory mem (.a(Sel),.b(Sel),.c(Sel),.d(Sel)); //adder8bit

    stateMachine sm (.A(A),.B(B),.Sel(y),.Sum(Sum)); //customer

endmodule