`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:59:55 12/27/2020 
// Design Name: 
// Module Name:    main 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module main(
    input start,
    input [7:0] pixel_in1,
   input [7:0] pixel_in2,
   input [7:0] pixel_in3,
    input clk,
    output reg ValidResult,
    output reg [7:0] Pixel_address,
    output reg [7:0] pixel_out = 0
    );



 reg [71:0] pixelsReady = 0;
 reg init = 1'b0;
 reg [7:0] p1 = 0;
 reg [7:0] p2 = 0;
 reg [7:0] p3 = 0;
 reg [7:0] p4 = 0;
 reg [7:0] p5 = 0;
 reg [7:0] p6 = 0;
 reg [7:0] p7 = 0;
 reg [7:0] p8 = 0;
 reg [7:0] p9 = 0;
 reg [100:0] counter = 0;
 reg [10:0] Dx = 0;
 reg [10:0] Dy = 0;
 reg signed [11:0] Dx_reg = 0;
 reg signed [11:0] Dy_reg = 0;
 reg [7:0] s;
 
 reg [100:0] addr = 0;
 reg [7:0] getData;
 reg fastClock;
 
 
 always @(posedge clk) begin
  p1 <= pixelsReady[7:0];
  p2 <= pixelsReady[15:8];
  p3 <= pixelsReady[23:16];
  p4 <= pixelsReady[31:24];
  p5 <= pixelsReady[39:32];
  p6 <= pixelsReady[47:40];
  p7 <= pixelsReady[55:48];
  p8 <= pixelsReady[63:56];
  p9 <= pixelsReady[71:64];
  pixelsReady <= {pixelsReady[47:0] , pixel_in3 ,pixel_in2 , pixel_in1};
  
  if(start == 1'b1 ) begin
   
   counter <= counter + 1;
   Dx_reg = (p1 - p3) + (p4 - p6)*2 + (p7 - p9);
   Dy_reg = (p7 - p1) + (p8 - p2)*2 + (p9 - p3);
   if(counter == 2) begin
    init <= 1'b1;
   end
  end
  if(init == 1'b1 ) begin
   if(Dx_reg < 0)
    Dx <= -Dx_reg;
   else
    Dx <= Dx_reg;
   if(Dy_reg < 0)
    Dy <= -Dy_reg;
   else
    Dy <= Dy_reg;
    if(Dx + Dy <= 127)
     pixel_out <= 0;
    else 
     pixel_out <= 8'b11111111;
   ValidResult <= 1'b1;
   Pixel_address <= counter - 3;
  end

 end

 
endmodule









