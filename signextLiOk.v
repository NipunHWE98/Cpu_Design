module signextLiOk(	input  [10:0] a,
						input[3:0] b,
						output  [31:0] y1,y2);
						
	 assign y1={{{17{b[3]}},b},a};
	 assign y2={{21{a[10]}},a};

endmodule