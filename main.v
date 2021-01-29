`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:37:19 01/17/2021 
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
   input clk,
   input [7:0] pixel_in1,
   input [7:0] pixel_in2,
   input [7:0] pixel_in3,
	input [7:0] pixel_in4,
	input [7:0] filter,
	input [7:0] size,
   output reg ValidResult,
   output reg [18:0] Pixel_address = 0,
   output reg [7:0] pixel_out1 = 0,
	output reg [7:0] pixel_out2 = 0,
	output reg [7:0] pixel_out3 = 0,
	output reg [7:0] pixel_out4 = 0
    );

 wire [7:0] pixel_out1_reg;
 wire [7:0] pixel_out2_reg;
 wire [7:0] pixel_out3_reg;
 wire [7:0] pixel_out4_reg;
 
 wire [7:0] outMedian1;
 wire [7:0] outMedian2;
 wire [7:0] outMedian3;
 wire [7:0] outMedian4;
 
 wire [7:0] outCanny1 , outCanny2 , outCanny3 , outCanny4;
 
 reg [71:0] pixelsReady = 0;
 reg [127:0] PHalf = 0;

 reg init = 1'b0;
 reg [7:0] p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16 = 0;
 
 reg [100:0] counter = 0;
 reg [10:0] Dx = 0;
 reg [10:0] Dy = 0;
 reg signed [11:0] Dx1_reg = 0;
 reg signed [11:0] Dy1_reg = 0;
 reg signed [11:0] Dx2_reg = 0;
 reg signed [11:0] Dy2_reg = 0;
 reg signed [11:0] Dx3_reg = 0;
 reg signed [11:0] Dy3_reg = 0;
 reg signed [11:0] Dx4_reg = 0;
 reg signed [11:0] Dy4_reg = 0;
 
 reg [100:0] addr = 0;
 reg [7:0] getData;
 
 reg [23:0] orderdRow1;
 reg [23:0] orderdRow2;
 reg [23:0] orderdRow3;
 reg [23:0] orderdColumn;
  
  
   always @(posedge clk) begin
	  pixelsReady <= {pixelsReady[47:0] , pixel_in3 ,pixel_in2 , pixel_in1};
	  PHalf <= {PHalf[95:0] , pixel_in4, pixel_in3 ,pixel_in2 , pixel_in1};
  
	   if(size == 1) begin
	    /*
	    p1  p2  p3  P4
	    p5  p6  p7  p8
	    p9  p10 p11 p12
	    p13 p14 p15 p16
	    */
	  	 p1 <=  pixelsReady[7:0];
		 p2 <= (pixelsReady[7:0]+pixelsReady[31:24])/2;
		 p3 <= (pixelsReady[31:24] + pixelsReady[55:48])/2;
		 p4 <=  pixelsReady[55:48];
		 p5 <= (pixelsReady[7:0] + pixelsReady[15:8]) / 2;
		 p6 <= (pixelsReady[7:0] + pixelsReady[15:8] + pixelsReady[31:24] + pixelsReady[39:32])/4;
		 p7 <= (pixelsReady[31:24] + pixelsReady[39:32] + pixelsReady[55:48] + pixelsReady[63:56]) / 4;
		 p8 <= (pixelsReady[55:48] + pixelsReady[63:56])/2;
		 p9 <= (pixelsReady[15:8] + pixelsReady[23:16]) / 2;
		 p10 <=(pixelsReady[15:8] + pixelsReady[23:16] + pixelsReady[39:32] + pixelsReady[47:40]) / 4;
		 p11 <=(pixelsReady[39:32] + pixelsReady[47:40] + pixelsReady[63:56] + pixelsReady[71:64]) / 4;
		 p12 <=(pixelsReady[63:56] + pixelsReady[71:64])/2;
		 p13 <= pixelsReady[23:16];
		 p14 <=(pixelsReady[23:16] + pixelsReady[23:16]) /2;
	 	 p15 <=(pixelsReady[23:16] + pixelsReady[71:64]) / 2;
		 p16 <= pixelsReady[71:64];
	   end
	   else if (size == 0) begin
		 /*
		 p1  p2  p3  0 
		 p5  p6  p7  0 
		 p9  p10 p11 0
		 0    0   0  0
		 */
	
		  p1 <= pixelsReady[7:0];
		  p5 <= pixelsReady[15:8];
		  p9 <= pixelsReady[23:16];
		  p2 <= pixelsReady[31:24];
		  p6 <= pixelsReady[39:32];
		  p10 <= pixelsReady[23:16];
		  p3 <= pixelsReady[55:48];
		  p7 <= pixelsReady[63:56];
		  p11 <= pixelsReady[71:64];
		  p4 <= 8'b0;
		  p8 <= 8'b0;
		  p12 <= 8'b0;
		  p13 <= 8'b0;
		  p14 <= 8'b0;
		  p15 <= 8'b0;
		  p16 <= 8'b0;
	   end
		else if (size == 2'b10)
	   begin
	   
	    /*
	    p.r1  p.r5  p.r9  p.r13    
		     p1    p2    p3     p4   
	    p.r2  p.r6  p.r10 p.r14
		     p5    p6    p7     p8
	    p.r3  p.r7  p.r11 p.r15   
		     p9    p10   p11    p12
	    p.r4  p.r8  p.r12 p.r16
		     p13   p14   p15    p16
	    */	
	    p1 <= (PHalf[7:0]+PHalf[15:8]+PHalf[39:32]+PHalf[47:40])/4;
		 p2 <= (PHalf[39:32]+PHalf[47:40]+PHalf[71:64]+PHalf[79:72])/4;
		 p3 <= (PHalf[71:64]+PHalf[79:72]+PHalf[103:96]+PHalf[111:104])/4;
		 p4 <= 8'b0;
		 p5 <= (PHalf[15:8]+PHalf[23:16]+PHalf[47:40]+PHalf[55:48])/4;
		 p6 <= (PHalf[47:40]+PHalf[55:48]+PHalf[79:72]+PHalf[87:80])/4;
		 p7 <= (PHalf[79:72]+PHalf[87:80]+PHalf[111:104]+PHalf[119:112])/4;
		 p8 <= 8'b0;
		 p9 <= (PHalf[23:16]+PHalf[31:24]+PHalf[55:48]+PHalf[63:56])/4;
		 p10 <= (PHalf[55:48]+PHalf[63:56]+PHalf[87:80]+PHalf[95:88])/4;
		 p11 <= (PHalf[87:80]+PHalf[95:88]+PHalf[119:112]+PHalf[127:120])/4;
		 p12 <= 8'b0;
		 p13 <= 8'b0;
		 p14 <= 8'b0;
		 p15 <= 8'b0;
		 p16 <= 8'b0;
	end
	else if (size == 2'b11) begin
	  	    p1 <=  pixelsReady[7:0];
		    p2 <= (pixelsReady[7:0]+pixelsReady[31:24])/2;
		    p3 <= (pixelsReady[31:24] + pixelsReady[55:48])/2;
		    p4 <=  pixelsReady[55:48];
		    p5 <= (pixelsReady[7:0] + pixelsReady[15:8]) / 2;
		    p6 <= (pixelsReady[7:0] + pixelsReady[15:8] + pixelsReady[31:24] + pixelsReady[39:32])/4;
		    p7 <= (pixelsReady[31:24] + pixelsReady[39:32] + pixelsReady[55:48] + pixelsReady[63:56]) / 4;
		    p8 <= (pixelsReady[55:48] + pixelsReady[63:56])/2;
		    p9 <= (pixelsReady[15:8] + pixelsReady[23:16]) / 2;
		    p10 <=(pixelsReady[15:8] + pixelsReady[23:16] + pixelsReady[39:32] + pixelsReady[47:40]) / 4;
		    p11 <=(pixelsReady[39:32] + pixelsReady[47:40] + pixelsReady[63:56] + pixelsReady[71:64]) / 4;
		    p12 <=(pixelsReady[63:56] + pixelsReady[71:64])/2;
		    p13 <= pixelsReady[23:16];
		    p14 <=(pixelsReady[23:16] + pixelsReady[23:16]) /2;
	 	    p15 <=(pixelsReady[23:16] + pixelsReady[71:64]) / 2;
		    p16 <= pixelsReady[71:64];	 
	end
  end
  
  always @(posedge clk) begin
  if(start == 1'b1 ) begin
   counter <= counter + 1;
   if(counter == 2) begin
    init <= 1'b1;
   end
	
		Dx1_reg = (p1 - p9) + (p2 - p10)*2 + (p3 - p11);
		Dy1_reg = (p3 - p1) + (p7 - p5)*2 + (p11 - p9);
		Dx2_reg = (p2 - p10) + (p3 - p11)*2 + (p4 - p12);
		Dy2_reg = (p4 - p2) + (p8 - p6)*2 + (p12 - p10);
		Dx3_reg = (p5 - p3) + (p6 - p14)*2 + (p7 - p15);
		Dy3_reg = (p7 - p5) + (p11 - p9)*2 + (p15 - p13);
		Dx4_reg = (p6 - p14) + (p7 - p15)*2 + (p8 - p16);
		Dy4_reg = (p8 - p6) + (p12 - p9)*2 + (p16 - p14);

  end
  
  if(init == 1'b1 ) begin
	 if(filter == 0) begin /////////////////////////////////////////////////// sobel filter 
			pixel_out1 <= pixel_out1_reg;
			pixel_out2 <= pixel_out2_reg;
			pixel_out3 <= pixel_out3_reg;
			pixel_out4 <= pixel_out4_reg;
			
			Pixel_address <= Pixel_address + 1;
			ValidResult <= 1'b1;
	  end
	  if(filter == 1) begin//////////////////////////////////////////////// median filter
			pixel_out1 <= outMedian1;
			pixel_out2 <= outMedian2;
			pixel_out3 <= outMedian3;
			pixel_out4 <= outMedian4;
			
			Pixel_address <= Pixel_address + 1;
			ValidResult <= 1;	
	  end
	  if(filter == 2) begin//////////////////////////////////////////////// canny filter
			pixel_out1 <= outCanny1;
			pixel_out2 <= outCanny2;
			pixel_out3 <= outCanny3;
			pixel_out4 <= outCanny4;
			
			Pixel_address <= Pixel_address + 1;
			ValidResult <= 1;	
	  end
	end
 end
 
  sobel pixel1 (Dx1_reg,Dy1_reg,pixel_out1_reg);
  sobel pixel2 (Dx2_reg,Dy2_reg,pixel_out2_reg);
  sobel pixel3 (Dx3_reg,Dy3_reg,pixel_out3_reg);
  sobel pixel4 (Dx4_reg,Dy4_reg,pixel_out4_reg);
		 
  median medPixel1 (p1,p2,p3,p5,p6,p7,p9,p10,p11,clk,outMedian1);
  median medPixel2 (p2,p3,p4,p6,p7,p8,p10,p11,p12,clk,outMedian2);
  median medPixel3 (p5,p6,p7,p9,p10,p11,p13,p14,p15,clk,outMedian3);
  median medPixel4 (p6,p7,p8,p10,p11,p12,p14,p15,p16,clk,outMedian4);
  
  canny cannyPixel1 (clk,p1,p2,p3,p5,p6,p7,p9,p10,p11,outCanny1);
  canny cannyPixel2 (clk,p2,p3,p4,p6,p7,p8,p10,p11,p12,outCanny2);
  canny cannyPixel3 (clk,p5,p6,p7,p9,p10,p11,p13,p14,p15,outCanny3);
  canny cannyPixel4 (clk,p6,p7,p8,p10,p11,p12,p14,p15,p16,outCanny4);

 
endmodule
