module divide_module(input x,
							input y,
							input b_in,
							input s_in,
							output b_out,
							output s_out,
							output s	);
 
 
 
 wire diff;						 
 One_Bit_Full_Subtractor ss(x,y,b_in,diff,b_out);
 two_one_mux mm(x,diff,s_in,s_out);
 assign s=s_in;
 
 endmodule