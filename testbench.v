`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2019 03:58:22
// Design Name: 
// Module Name: testbench
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


module testbench();
reg clk;
initial clk=0;
always #5 clk=~clk;
reg [79:0] in;
//wire [79:0] o1,o2,o3,o4,o5,o6,o7,o8,o9,o10;
wire [79:0] out;
bw x(
 .a(in),
    .out(out),
.clk(clk)
);
always @(negedge clk)
begin
in <= "abcaabcbb{";
end
//initial
//begin
//$display("If simulation ends before the testbench");
//$display("completes, use the menu option to run all.");
//#400; // allow it to run
//$display("Simulation is over, check the waveforms.");
//$stop;
//end

endmodule
