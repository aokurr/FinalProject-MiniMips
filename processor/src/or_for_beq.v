module or_for_beq(input [31:0]alu_result,output F);
or q(F,alu_result[0],alu_result[1],alu_result[2],alu_result[3],alu_result[4],alu_result[5],
		 alu_result[6],alu_result[7],alu_result[8],alu_result[9],alu_result[10],
		 alu_result[11],alu_result[12],alu_result[13],alu_result[14],alu_result[15],
		 alu_result[16],alu_result[17],alu_result[18],alu_result[19],alu_result[20],
		 alu_result[21],alu_result[22],alu_result[23],alu_result[24],alu_result[25],
		 alu_result[26],alu_result[27],alu_result[28],alu_result[29],alu_result[30],
		 alu_result[31]);


endmodule