module Memory(//customer
    input [1:0] a,
    input [1:0] b,
    input [1:0] c,
    input [1:0] d,
    output y
    );
    
   assign y=a&~b&~c&d | ~a&b&d | c&~&d ;
   
endmodule
