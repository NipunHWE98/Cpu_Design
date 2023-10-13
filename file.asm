.data
matrixA: .word 1,3,2,1,3,2,1,3,2 #defining matrix A
matrixB: .word 0,1,2,0,1,2,0,1,2 #defining matrix B

.text 

#multiply the 2 matrices using the logic
#for(int i = 0 ; i < 3; i ++)
  # for( int j = 0; j < 3; j++)
  # {
  # sum = 0
    # for(int k = 0; k < 3; k++)
    # {
      # sum += A[i][k] * B[k][j];
      # }
      # output[i][j] = sum
      # }
     
     
LRI $t0, 0 #row number, i
LRI $t5,3 #3 rows
LRI $t6,4 #load 4 to temporary register t6

OuterLoop:
COMPARE $t0, $t5, EndOuterLoop #if row >= 3
LRI $t1, 0 #col number , j

InnerLoop1:
COMPARE $t1, $t5, EndInnerLoop1 #if col >= 3
LRI $t2, 0 # k
LRI $t6, 0 #sum

InnerLoop2:
COMPARE $t2, $t5, EndInnerLoop2
#get the element A[i][k] by calculating offset i * 3 + k, store t4 = A[i][k]
MUL $t3, $t0, $t5 #multiple t0 and t5 and store in t3
ADD $t3, $t3, $t2 #add t3 and t2 and store in t3
MUL $t3, $t3, $t6 #multiply by 4 since each int takes 4 bytes
COPYMR $t4,matrixA($t3)

#get the element B[k][j] by calculating offset k * 3 + j, store t5 = B[k][j]
MUL $t3, $t2, $t5 #multiple t2 and t5 amd store in t3
ADD $t3, $t3, $t1 #add t3 and t1 and store in t3
MUL $t3, $t3, $t6 #multiply by 4 since each int takes 4 bytes
COPYMR $t5, matrixB($t3)
#t4 = A[i][k] * B[k][j]
#sum = sum + t4
MUL $t4, $t4, $t5 #multiple t4 and t5 amd store in t4
ADD $t6, $t6, $t4 #add t6 and t4 and store in t6
LRI $t2, 1 #load the value 1 to t2
GO InnerLoop2 #go to the InnerLoop2

EndInnerLoop2:
#calculate offset for output element and store ans output[i][j] = sum
MUL $t3, $t0, $t5 #multiple t0 and t5 amd store in t3
ADD $t3, $t3, $t1 #add t3 and t1 and store in t3
MUL $t3, $t3, $t6 #multiply by 4 since each int takes 4 bytes
COPYRM $t6, output($t3) #store sum into output  
#incremetn col
LRI $t1, 1
GO InnerLoop1 #go to the InnerLoop1

EndInnerLoop1:
#increment row
LRI $t0,1 
GO OuterLoop #go to the OuterLoop

EndOuterLoop:
LRA $t0, output #base address of output
LRI $t1, 1 #counter

SumLoop: #sum all elements
LRI $t5,9 #load 9 to register t5
LRI $t6,4 #load 4 to register t6
COMPARE $t1, $t5, Exit #if 9 numbers finished then exit
ADD $t4,$t4,$t0 #store summing value in t4
LRI $t2,1 #load 1 to register t2
ADD $t1, $t1, $t2 #incrementing t1 by 1
ADD $t0, $t0,$t6 #add t0 amd t5 and store in t0
Go SumLoop #go to SumLoop

Exit:
LRI $t0,9 #load the value 9 to the register t0
DIV $t4,$t4,$t0 #divide the sum by 9 and store it in register t4

