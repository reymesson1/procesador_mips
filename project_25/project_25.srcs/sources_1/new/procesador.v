module procesador( //lab1
    input [15:0] A,
    input [15:0] B,
    input [3:0] Sel,
    output wire [15:0] Sum
);

    stateMachine sm (.A(A),.B(B),.Sel(y),.Sum(Sum)); //customer

    Memory mem (.a(Sel),.b(Sel),.c(Sel),.d(Sel)); //adder8bit

endmodule