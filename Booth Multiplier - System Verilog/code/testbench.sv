`timescale 1ns/1ps
 
module Booth_Multiplier_tb;
  logic clk,rst;
  logic [3:0] A,B;
  logic [7:0] AXB;
  logic [2:0] n;
  
  Booth_Multiplier utt(
    .clk(clk),
    .rst(rst),
    .A(A),
    .B(B),
    .AXB(AXB),
    .n(n)
  );
  initial clk = 1;
  always #20 clk = ~clk;  
initial begin
    $dumpfile("dump.vcd");
	$dumpvars;
end  
  initial begin
    rst = 1;
    A=4'b0111;
    B=4'b0011;
    #5 rst =0;  
    #200;
    $finish;
  end
endmodule
