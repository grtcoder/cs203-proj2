`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 02:02:59
// Design Name: 
// Module Name: bw
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


module bw(
    input clk,
    input [79:0] a,
//    output [79:0] o1,o2,o3,o4,o5,o6,o7,o8,o9,o10
output reg[79:0] out
    );
    reg [79:0] rotated[9:0];
    reg[79:0] in1,in2,in3,in4,in5,in6,in7,in8,in9,in10;
    wire [80:0] o1,o2,o3,o4,o5,o6,o7,o8,o9,o10;
    integer k;
    always @ (posedge clk) begin
        rotated[0]=a;
       for(k=1;k<10;k=k+1) begin
        rotated[k]={rotated[k-1][7:0],rotated[k-1][79:8]};
        end
        in1<=rotated[0];
        in2<=rotated[1];
        in3<=rotated[2];
        in4<=rotated[3];
        in5<=rotated[4];
        in6<=rotated[5];
        in7<=rotated[6];
        in8<=rotated[7];
        in9<=rotated[8];
        in10<=rotated[9];
//        $display("%s",rotated[2]);
      end
      enum_sort x(
        .a1(in1),
        .a2(in2),
        .a3(in3),
        .a4(in4),
        .a5(in5),
        .a6(in6),
        .a7(in7),
        .a8(in8),
        .a9(in9),
        .a10(in10),
        .out1(o1),
        .out2(o2),
        .out3(o3),
        .out4(o4),
        .out5(o5),
        .out6(o6),
        .out7(o7),
        .out8(o8),
        .out9(o9),
        .out10(o10),
        .clk(clk)
        );
        always @(posedge clk) begin
        out={o1[7:0],o2[7:0],o3[7:0],o4[7:0],o5[7:0],o6[7:0],o7[7:0],o8[7:0],o9[7:0],o10[7:0]};
        end 
endmodule
