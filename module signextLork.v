module signextLork(	input  [10:0] a,[3:0]b,
						output  [31:0] y1,y2);
						
    assign y1 = {{16{a[15]}}, a};
	 assign y1 = {{{{17{1'b0}}},b[3:0]},a[10:0]};
	 assign y2 ={{{21{1'b0}}},a[10:0]};

endmodule