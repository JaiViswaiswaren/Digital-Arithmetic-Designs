`timescale 1ns/1ps
 
module Booth_Multiplier(
  input logic clk,rst,
  input logic [3:0] A,B,
  output logic [7:0] AXB,
  output logic [2:0] n
);
  logic [8:0] register;
  logic busy;
  
  always_ff @ ( posedge clk ) begin
    if(rst) begin
      n <= 3'b100;
      register <= {4'b0000,B,1'b0};
      busy <= 1;
    end 
    else if(busy) begin
      logic [3:0] temp;

        case(register[1:0])
          2'b00:begin
            temp = register[8:5];
          end
          2'b01:begin 
            temp = register[8:5] + A;
          end
          2'b10:begin 
            temp = register[8:5] - A;
          end
          2'b11:begin
            temp = register[8:5];
          end
          default: ;
        endcase
      register <= {temp[3],temp,register[4:1]};      
      n <= n - 1;
    if (n == 3'b001)
      busy <= 0;
    end
  end
  
assign AXB = register[8:1] ;                                       
endmodule

