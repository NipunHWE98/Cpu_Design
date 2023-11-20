
module two_one_mux(a,b,select,y);
input a,b,select;
output y ;

wire i1,i2,i3;

assign i1=~select;
assign i2=i1&a;
assign i3=b&select;

assign y=i2|i3;

endmodule