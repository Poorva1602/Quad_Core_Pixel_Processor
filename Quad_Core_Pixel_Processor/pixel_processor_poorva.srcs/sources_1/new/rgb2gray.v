module rgb2gray(rgb2gray,red,green,blue);

input [7:0]red, green, blue;

output [7:0]rgb2gray;

assign rgb2gray=red+green+blue;

red r0(.red(red),.r(r));
green g0(.green(green),.g(g));
blue b0(.blue(blue),.b(b));

endmodule