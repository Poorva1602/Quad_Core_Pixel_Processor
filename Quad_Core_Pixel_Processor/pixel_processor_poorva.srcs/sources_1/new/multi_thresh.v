module multi_thresh(multi_thresh,t2,t3,t4,red,green,blue);
input [7:0]red,green,blue;
input [7:0]t2,t3,t4;
output [7:0]multi_thresh;
wire [7:0]gray;

rgb2gray gray_pixel(.rgb2gray(gray),.red(red),.green(green),.blue(blue));

assign multi_thresh = ((gray<t2)?8'd0:(
					    (t2<gray && gray<t3)?t2:(
						(t3<gray && gray<=t4)?t3:8'd255)));
						
endmodule