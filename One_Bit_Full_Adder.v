module One_Bit_Full_Adder(input A,
							  input B,
							  input cin,
							  output sum,
							  output cout);
			  
								
	assign sum=A^B^cin;
	assign cout=(A&B)|(B&cin)|(A&cin);								
								
								
								
endmodule