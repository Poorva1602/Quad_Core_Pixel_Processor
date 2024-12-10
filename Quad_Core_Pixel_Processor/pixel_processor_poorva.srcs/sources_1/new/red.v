module red(red,r);

input [7:0]r;

output [7:0]red;

wire [7:0]r1,r2,r3,r4;

assign r1=r>>3'd2;
assign r2=r>>3'd3;
assign r3=r>>3'd4;
assign r4=r>>3'd7;

assign red=r1+r2-r3-r4;

endmodule