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
	input [7:0] filter,
    input clk,
    output reg ValidResult,
    output reg [18:0] Pixel_address = 0,
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
 
 reg [7:0] flag = 0;
 reg [23:0] orderdRow1;
 reg [23:0] orderdRow2;
 reg [23:0] orderdRow3;
  reg [23:0] orderdColumn;
 
 always @(posedge clk) begin
  /*
 p1 p4 p7
 p2 p5 p8
 p3 p6 p9
 */
 
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
	if(filter == 0) begin // sobel filter 
	////////// absolute value /////////
		if(Dx_reg < 0)
		 Dx <= -Dx_reg;
		else
		 Dx <= Dx_reg;
		if(Dy_reg < 0)
		 Dy <= -Dy_reg;
		else
		 Dy <= Dy_reg;
	///// calcute auyput ////////////
		 if(Dx + Dy <= 127)
		  pixel_out <= 0;
		 else 
		  pixel_out <= 8'b11111111;
		ValidResult <= 1'b1;
		Pixel_address <= counter - 3;
	  end
	end
	
	if(filter == 1) begin
	////////////// sort row /////////////////
	  /////////////row 1///////////////
		if(p4 < p1 && p4 < p7) begin
			if(p1 < p7) begin // p4 < p1 < p7
				orderdRow1 = {p7 , p1 , p4};
			end
			else begin// p4 < p7 < p1
			orderdRow1 = {p1 , p7 , p4};
			end
		end
		else if(p1 < p4 && p1 < p7) begin 
			if(p4 < p7) begin//p1 < p4 < p7
				orderdRow1 = {p1 , p4 , p7};
			end
			else begin//p1 < p7 < p4
				orderdRow1 = {p4 , p7 , p1};
			end
		end
		else if(p7 < p1 && p7 < p4) begin
			if(p1 < p4) begin// p7 < p1 < p4
				orderdRow1 = {p4 , p1 , p7};
			end
			else begin//p7 < p4 < p1
				orderdRow1 = {p1 , p4 , p7};
			end
		end
		/////////////row 2///////////////
		if(p5 < p2 && p5 < p8) begin
			if(p2 < p8) begin // p5 < p2 < p8
				orderdRow2 = {p8 , p2 , p5};
			end
			else begin// p5 < p8 < p2
				orderdRow2 = {p2 , p8 , p5};
			end
		end
		else if(p2 < p5 && p2 < p8) begin 
			if(p5 < p8) begin//p2 < p5 < p8
				orderdRow2 = {p8 , p5 , p2};
			end
			else begin//p2 < p8 < p5
			orderdRow2 = {p5 , p8 , p2};
			end
		end
		else if(p8 < p2 && p8 < p5) begin
			if(p2 < p5) begin// p8 < p2 < p5
				orderdRow2 = {p5 , p2 , p8};
			end
			else begin//p8 < p5 < p2
				orderdRow2 = {p2 , p5 , p8};
			end
		end
		/////////////row 3///////////////
		if(p6 < p3 && p6 < p9) begin
			if(p3 < p9) begin // p6 < p3 < p9
				orderdRow3 = {p9 , p3 , p6};
			end
			else begin// p6 < p9 < p3
				orderdRow3 = {p3 , p9 , p6};
			end
		end
		else if(p3 < p6 && p3 < p9) begin 
			if(p6 < p9) begin//p3 < p6 < p9
				orderdRow3 = {p9 , p6 , p3};
			end
			else begin//p3 < p9 < p6
				orderdRow3 = {p6 , p9 , p3};
			end
		end
		else if(p9 < p3 && p9 < p6) begin
			if(p3 < p6) begin// p9 < p3 < p6
				orderdRow3 = {p6 , p3 , p9};
			end
			else begin//p9 < p6 < p3
				orderdRow3 = {p3 , p6 , p9};
			end
		end
		
		////////////// sort culumn /////////////////
		/////////////culumn 2///////////////
		if(orderdRow1[15:8] < orderdRow2[15:8] && orderdRow1[15:8] < orderdRow3[15:8]) begin
			if(orderdRow2[15:8] < orderdRow3[15:8]) begin // column1 < column2 < column3
				orderdColumn = {orderdRow3[15:8] , orderdRow2[15:8] , orderdRow1[15:8] };
			end
			else begin//  column1 < column3 < column2
				orderdColumn = {orderdRow2[15:8], orderdRow3[15:8] , orderdRow1[15:8]};
			end
		end
		else if(orderdRow2[15:8] < orderdRow1[15:8] && orderdRow2[15:8] < orderdRow3[15:8]) begin 
			if(orderdRow1[15:8] < orderdRow3[15:8]) begin//column2 < column1 < column3
				orderdColumn = {orderdRow3[15:8] , orderdRow1[15:8] , orderdRow2[15:8]};
			end
			else begin//column2 < column3 < column1
				orderdColumn = {orderdRow1[15:8] , orderdRow3[15:8] , orderdRow2[15:8]};
			end
		end
		else if(orderdRow3[15:8] < orderdRow1[15:8] && orderdRow3[15:8] < orderdRow2[15:8]) begin
			if(orderdRow1[15:8] < orderdRow2[15:8]) begin// column3 < column1 < column2
				orderdColumn = {orderdRow2[15:8] , orderdRow1[15:8] ,orderdRow3[15:8]};
			end
			else begin//column3 < column2 < column1
				orderdColumn = {orderdRow1[15:8] , orderdRow2[15:8] ,orderdRow3[15:8]};
			end
		end
		/////////////////////////////
		pixel_out <= orderdColumn[15:8];
		Pixel_address <= Pixel_address + 1;
		ValidResult <= 1;
		
	end

 end

 
endmodule









