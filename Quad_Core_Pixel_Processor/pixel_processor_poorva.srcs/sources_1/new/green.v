module green(green,g);

input [7:0]g;

output [7:0]green;

wire [7:0]g1,g2,g3;

assign g1=g>>3'd1;
assign g2=g>>3'd3;
assign g3=g>>3'd5;


assign green=g1+g2-g3;

endmodule