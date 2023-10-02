module comp(out,in);
output out;
input [15:0]in;
assign out = ~|in[15:0];
endmodule 