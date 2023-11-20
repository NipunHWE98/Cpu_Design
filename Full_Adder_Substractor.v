module Full_Adder_Substractor(input[31:0]A,
									input[31:0]B,
									input m,
									output[31:0]sum1
									);
									
									
wire b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20,b21,b22,b23,b24,b25,b26,b27,b28,b29,b30,b31,signcomp,error;
wire[31:0]cout,Sum;
//Comparator8Bit com(.a(A),.b(B),.lt(error));
xor (b0,m,B[0]	),(b1,m,B[1]),(b2,m,B[2]),(b3,m,B[3]),(b4,m,B[4]),(b5,m,B[5]),(b6,m,B[6]),(b7,m,B[7]);	
     One_Bit_Full_Adder B0(A[0],b0,m,Sum[0],cout[0]);
		One_Bit_Full_Adder B1(A[1],b1,cout[0],Sum[1],cout[1]);
		One_Bit_Full_Adder B2(A[2],b2,cout[1],Sum[2],cout[2]);
		One_Bit_Full_Adder B3(A[3],b3,cout[2],Sum[3],cout[3]);
		One_Bit_Full_Adder B4(A[4],b4,cout[3],Sum[4],cout[4]);
		One_Bit_Full_Adder B5(A[5],b5,cout[4],Sum[5],cout[5]);
		One_Bit_Full_Adder B6(A[6],b6,cout[5],Sum[6],cout[6]);
        One_Bit_Full_Adder B7(A[7],b7,cout[6],Sum[7],cout[7]);
        One_Bit_Full_Adder B8(A[8],b8,cout[7],Sum[8],cout[8]);
        One_Bit_Full_Adder B9(A[9],b9,cout[8],Sum[9],cout[9]);
        One_Bit_Full_Adder B10(A[10],b10,cout[9],Sum[10],cout[10]);
        One_Bit_Full_Adder B11(A[11],b11,cout[10],Sum[11],cout[11]);
        One_Bit_Full_Adder B12(A[12],b12,cout[11],Sum[12],cout[12]);
        One_Bit_Full_Adder B13(A[13],b13,cout[12],Sum[13],cout[13]);
        One_Bit_Full_Adder B14(A[14],b14,cout[13],Sum[14],cout[14]);
        One_Bit_Full_Adder B15(A[15],b15,cout[14],Sum[15],cout[15]);
        One_Bit_Full_Adder B16(A[16],b16,cout[15],Sum[16],cout[16]);
        One_Bit_Full_Adder B17(A[17],b17,cout[16],Sum[17],cout[17]);
        One_Bit_Full_Adder B18(A[18],b18,cout[17],Sum[18],cout[18]);
        One_Bit_Full_Adder B19(A[19],b19,cout[18],Sum[19],cout[19]);
        One_Bit_Full_Adder B20(A[20],b20,cout[19],Sum[20],cout[20]);
        One_Bit_Full_Adder B21(A[21],b21,cout[20],Sum[21],cout[21]);
        One_Bit_Full_Adder B22(A[22],b22,cout[21],Sum[22],cout[22]);
        One_Bit_Full_Adder B23(A[23],b23,cout[22],Sum[23],cout[23]);
        One_Bit_Full_Adder B24(A[24],b24,cout[23],Sum[24],cout[24]);
        One_Bit_Full_Adder B25(A[25],b25,cout[24],Sum[25],cout[25]);
        One_Bit_Full_Adder B26(A[26],b26,cout[25],Sum[26],cout[26]);
        One_Bit_Full_Adder B27(A[27],b27,cout[26],Sum[27],cout[27]);
        One_Bit_Full_Adder B28(A[28],b28,cout[27],Sum[28],cout[28]);
        One_Bit_Full_Adder B29(A[29],b29,cout[28],Sum[29],cout[29]);    
        One_Bit_Full_Adder B30(A[30],b30,cout[29],Sum[30],cout[30]);    
       // One_Bit_Full_Adder B31(A[31],b31,cout[30],Sum[31],cout[31]);

		xnor x1(signcomp,A[31],B[31]);
		and a1(Sum[31],A[31],signcomp);
							
		or o11(sum1[0],error,Sum[0]);
		or o21(sum1[1],error,Sum[1]);
		or o31(sum1[2],error,Sum[2]);
		or o41(sum1[3],error,Sum[3]);
		or o51(sum1[4],error,Sum[4]);
		or o61(sum1[5],error,Sum[5]);
		or o71(sum1[6],error,Sum[6]);
		or o81(sum1[7],error,Sum[7]);
        or o91(sum1[8],error,Sum[8]);
        or o101(sum1[9],error,Sum[9]);
        or o111(sum1[10],error,Sum[10]);
        or o121(sum1[11],error,Sum[11]);
        or o131(sum1[12],error,Sum[12]);
        or o141(sum1[13],error,Sum[13]);
        or o151(sum1[14],error,Sum[14]);
        or o161(sum1[15],error,Sum[15]);
        or o171(sum1[16],error,Sum[16]);
        or o181(sum1[17],error,Sum[17]);
        or o191(sum1[18],error,Sum[18]);
        or o201(sum1[19],error,Sum[19]);
        or o211(sum1[20],error,Sum[20]);
        or o221(sum1[21],error,Sum[21]);
        or o231(sum1[22],error,Sum[22]);
        or o241(sum1[23],error,Sum[23]);
        or o251(sum1[24],error,Sum[24]);
        or o261(sum1[25],error,Sum[25]);
        or o271(sum1[26],error,Sum[26]);
        or o281(sum1[27],error,Sum[27]);
        or o291(sum1[28],error,Sum[28]);
        or o301(sum1[29],error,Sum[29]);
        or o311(sum1[30],error,Sum[30]);
        or o321(sum1[31],error,Sum[31]);



endmodule