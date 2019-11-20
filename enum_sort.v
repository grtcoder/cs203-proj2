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
module enum_sort(
    input clk,
   input [79:0] a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,
   output reg [79:0] out1,out2,out3,out4,out5,out6,out7,out8,out9,out10
    );
   reg [10:0] c;
   reg [79:0] arr [9:0];
   integer p;
    integer i,j;
    reg [79:0] dat1, dat2, dat3, dat4, dat5,dat6,dat7,dat8,dat9,dat10;
   always @(posedge clk) begin
    dat1<=a1;
   dat2<=a2;
   dat3<=a3;
   dat4<=a4;
   dat5<=a5;
   dat6<=a6;
   dat7<=a7;
   dat8<=a8;
   dat9<=a9;
   dat10<=a10;
    //arr[10]<=a1;
   end
   reg [79:0]temp;
   always @* begin
   arr[0]<=dat1;
    arr[1]<=dat2;
    arr[2]<=dat3;
    arr[3]<=dat4;
    arr[4]<=dat5;
    arr[5]<=dat6;
    arr[6]<=dat7;
    arr[7]<=dat8;
    arr[8]<=dat9;
    arr[9]<=dat10;
   for(i=0;i<10;i=i+1) begin
        for(j=0;j<9;j=j+1) begin
            if(arr[j]<arr[j+1]) begin
                temp=arr[j];
                arr[j]=arr[j+1];
                arr[j+1]=temp;
             end
        end
   end
    end
    integer l;
    always @(posedge clk) begin
    out1<=arr[9];
    out2<=arr[8];
    out3<=arr[7];
    out4<=arr[6];
    out5<=arr[5];
    out6<=arr[4];
    out7<=arr[3];
    out8<=arr[2];
    out9<=arr[1];
    out10<=arr[0];
    end
    endmodule