module Memory(
    output reg [15:0] data_out,
    input [15:0] address,
    input [15:0] data_in, 
    input write_enable,
    input clk
);
    reg [15:0] memory [0:300];
    //int memory[255];
        
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
