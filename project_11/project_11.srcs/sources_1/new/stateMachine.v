`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2020 16:36:23
// Design Name: 
// Module Name: stateMachine
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module stateMachine(
    input [1:0] Moneda,
    input Entregar,
    input Producto,
    input clk,
    input reset,
    output reg Y
    );
    
    reg [3:0] currentState;
    reg [3:0] nextState;
    reg write_enable;
    wire [15:0] data_out;
    reg [15:0] data_out_2;
    reg [15:0] address;
    reg [15:0] data_in;
        
    memory mem(.data_out(data_out), .address(address), .data_in(data_in), .write_enable(write_enable), .clk(clk) ); 
    
  	reg[31:0]mem2[255:0];    
    
    parameter STATE_A = 4'd0, STATE_B = 4'd1, STATE_C = 4'd2, STATE_D = 4'd3, STATE_E = 4'd4, STATE_F = 5'd5, STATE_G = 4'd5, STATE_H = 4'd6, STATE_I = 4'd7, STATE_J = 4'd8, STATE_K = 4'd9, STATE_L = 4'd10, STATE_M = 4'd11, STATE_N = 4'd12, STATE_O = 4'd13, STATE_P = 4'd14, STATE_Q = 4'd15, STATE_R = 4'd16; 



    always @(currentState or Producto or Entregar) begin
    case(currentState)
    STATE_A://0000
        if (Producto & Entregar == 1 & Moneda == 01 )begin
            data_in <= STATE_B;
            address <= 0; 
            write_enable<=1;
            nextState = STATE_B; 
            data_out_2 = STATE_B; 
        end
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_C;//1
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_F;//
        else
        nextState = STATE_A;
    STATE_B://5
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_C; //3
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_D; //2
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_G; //2
    STATE_C://10
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_D; //3
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_E; //2
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_H; //2
    STATE_D://15
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_E; //3
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_F; //2
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_I; //2
   STATE_E://20
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_F; 
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_G; 
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_J; 
//working fine testbench

   STATE_F://25
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_G; 
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_H; 
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_K; 

   STATE_G://30
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_H; 
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_I; 
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_L; 

   STATE_H://35
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_I; 
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_J; 
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_M; 

   STATE_I://40
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_J; 
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_K; 
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_N; 

   STATE_J://45
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_K; 
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_L; 
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_O; 

   STATE_K://50
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_L; 
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_M; 
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_P; 

   STATE_L://55
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_M; 
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_N; 
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_P;//75 

   STATE_M://60
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_M; 
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_O; 
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_P;//75 

   STATE_N://65
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_O; 
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_P; 
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_P;//75 

   STATE_O://70
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_P; //75
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_P;//75 
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_P;//75 
        
   STATE_P://75
    if (Producto & Entregar == 1 & Moneda == 01 )
        nextState = STATE_P; 
        else if (Producto & Entregar == 1 & Moneda == 10 )
        nextState = STATE_P; 
        else if (Producto & Entregar == 1 & Moneda == 11 )
        nextState = STATE_P; 

    default:
        
        nextState =  STATE_A;
    endcase
    
    end


    //CurrentState logic
    always @(posedge clk or  negedge reset)begin
    if (!reset)
     currentState = STATE_A;
     else
     currentState = nextState;  
    end

   always @(currentState) begin
   if (currentState == STATE_E)
    Y = 1;
    else 
    Y = 0;
   
   end

    
endmodule
