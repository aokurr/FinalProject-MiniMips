module m21_5_bit(Y, D0, D1, S);
input S;
input [4:0]D0,D1;
output [4:0]Y;

m21 q0(Y[0], D0[0], D1[0], S);
m21 q1(Y[1], D0[1], D1[1], S);
m21 q2(Y[2], D0[2], D1[2], S);
m21 q3(Y[3], D0[3], D1[3], S);
m21 q4(Y[4], D0[4], D1[4], S);

endmodule