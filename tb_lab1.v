`timescale 1ns / 1ps
module tb_lab1;
    reg [7:0] I;
    reg [2:0] S;
    wire y;
   
    Behavioral8to1Mux u_mux_tb (
        .i(I),
        .s(S),
        .o(y)
    );
    initial begin
    #10 I =  8'b01010101;
    #10 S = 3'b000;
    #10 S = 3'b001;
    #10 S = 3'b011;
    #10 S = 3'b100;
    #10 S = 3'b101;
    #10 S = 3'b110;
    #10 S = 3'b111;
    #10 $stop;
    end
   
endmodule


