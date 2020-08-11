module adder8bits(
    input [7:0] A,
    input [7:0] B,
    input [1:0] Sel,
    output reg [7:0] Sum    
    );
    always @(A,B,Sel)    
            
    #10
    
    if (Sel == 0)
        Sum  = A + B;        
        
    else
        Sum = A - B;

endmodule
