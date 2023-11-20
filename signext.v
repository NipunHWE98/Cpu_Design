module signext(	input  [18:0] a,
						output  [31:0] y);
						
    assign y = {{13{a[18]}}, a};

endmodule