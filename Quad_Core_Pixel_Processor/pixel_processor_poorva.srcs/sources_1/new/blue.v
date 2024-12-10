module blue(blue,b);

input [7:0]b;

output [7:0]blue;

wire [7:0]b1,b2;

assign b1=b>>3'd3;
assign b2=b>>3'd6;

assign blue=b1-b2;

endmodule