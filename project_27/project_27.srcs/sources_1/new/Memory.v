module Memory(
    input [1:0] a,
    input [1:0] b,
    input [1:0] c,
    input [1:0] d,
    output y,
    output reg [15:0] data_out,
    input [15:0] address,
    input [15:0] data_in, 
    input write_enable,
    input clk
    );
    
   assign y=a&~b&~c&d | ~a&b&d | c&~&d ;
   
    reg [15:0] memory [0:65];
    
    initial begin
    
//    $readmemh("memory_prueba.mem", memory);
    $readmemb("memory_prueba_b.mem", memory);

    end;
    
    always @(posedge clk) begin
        if (write_enable) begin
            memory[address] <= data_in;
        end
        data_out <= memory[address];
    end



endmodule
