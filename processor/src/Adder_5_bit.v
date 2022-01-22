module Adder_5_bit (input [4:0]A,B,output [4:0]F);
wire [4:0]Co;
full_adder q0(F[0],Co[0],A[0],B[0],1'b0,1'b0,1'b0);
full_adder q1(F[1],Co[1],A[1],B[1],Co[0],1'b0,1'b0);
full_adder q2(F[2],Co[2],A[2],B[2],Co[1],1'b0,1'b0);
full_adder q3(F[3],Co[3],A[3],B[3],Co[2],1'b0,1'b0);
full_adder q4(F[4],Co[4],A[4],B[4],Co[3],1'b0,1'b0);
endmodule