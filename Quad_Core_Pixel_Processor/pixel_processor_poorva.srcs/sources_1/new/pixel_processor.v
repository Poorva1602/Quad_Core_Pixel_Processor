`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2023 13:02:10
// Design Name: 
// Module Name: pixel_processor
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

module pixel_processor(core_out,opcode,r,g,b);
input [1:0]opcode; 
input [7:0]r,g,b;
output [7:0] core_out;
wire [7:0] red, green, blue;
wire [7:0] gray, multi_thresh, bin_thresh;


assign core_out = ((opcode==2'b01)? gray :(
				   (opcode==2'b10) ? bin_thresh: (
				   (opcode==2'b11) ? multi_thresh: 0))); 
				   
//instantiation
red r0(.red(red),.r(r));
green g0(.green(green),.g(g));
blue b0(.blue(blue),.b(b));			
rgb2gray gray_pixel(.rgb2gray(gray),.red(red),.green(green),.blue(blue));
multi_thresh m_th0(.multi_thresh(multi_thresh),.t2(t2),.t3(t3),.t4(t4),.red(red),.green(green),.blue(blue));
bin_thresh b_th0(.bin_thresh(bin_thresh),.t1(t1),.red(red),.green(green),.blue(blue));
 				 
endmodule

