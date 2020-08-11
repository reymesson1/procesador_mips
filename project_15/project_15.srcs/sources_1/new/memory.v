module memory(
    input clk,
    input reset,
    input [15:0] data_in,
    input we,
    input [15:0] address,
    output reg [15:0] data_out
    );

    reg [15:0] memory [0:65];

    always @(posedge clk) begin
        if (we) begin
            memory[address] <= data_in;
        end
        data_out <= memory[address];
    end


endmodule