module stateMachine(
    input clk,
    input reset,
    input write_enable,
    input [15:0] data_in,
    input [15:0] address,
    output reg [15:0] data_out
);



    always @(posedge clk) begin
        
        if(reset == 1'b1)begin
            data_out <= #1 4'b0000; 
        end
        
        else if(write_enable==1'b1) begin
                
//            data_out <= #1 memory[data_out + 1];
//            #1 case(memory[data_out + 1])
//            2'b00 : memory[64] = 31;
//            2'b01 : memory[63] = 255;
//            2'b10 : memory[62] = 127;
//            2'b11 : memory[61] = 95;
//            default : $display("default");
//        endcase
        
        end
    
    end




endmodule