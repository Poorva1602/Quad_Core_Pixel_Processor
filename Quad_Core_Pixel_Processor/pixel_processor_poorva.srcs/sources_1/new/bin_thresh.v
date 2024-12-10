module bin_thresh(bin_thresh,t1,red,green,blue);
input [7:0]red,green,blue;
input [7:0]t1;
output [7:0]bin_thresh;
wire [7:0]gray;

assign bin_thresh = ((gray<t1)?8'd0:8'd255);

rgb2gray gray_pixel(.rgb2gray(gray),.red(red),.green(green),.blue(blue));

endmodule