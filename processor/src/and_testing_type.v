module and_testing_type(op,F);
input [3:0] op;
output [9:0]F;
and_R_type q0(op,F[0]);
and_addi_type q1(op,F[1]);
and_andi_type q2(op,F[2]);
and_ori_type q3(op,F[3]);
and_nori_type q4(op,F[4]);
and_BEQ_type q5(op,F[5]);
and_BNE_type q6(op,F[6]);
and_SLTI_type q7(op,F[7]);
and_LW_type q8(op,F[8]);
and_SW_type q9(op,F[9]);
endmodule