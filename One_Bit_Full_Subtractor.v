module One_Bit_Full_Subtractor(input X,
										 input Y, 
										 input B_in,
										 output D, 
										 output B_out );
assign D = X ^ Y ^ B_in;
assign B_out = B_in&~(X^Y)|~X&Y;

endmodule