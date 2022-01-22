`define DELAY 20
module test_bench_Alu();
	
	reg [31:0]A,B;
	reg Ci;
	reg [2:0]S;
	wire[31:0]F;
	wire Co;
	alu_32_bit ahmet (A,B,S[0],S[1],S[2],Ci,F,Co);
initial begin
	A = 32'b00000001000000010000000100000001;
	B = 32'b01100001011000010110000101100001; 
	Ci=1'b0; 
	S=3'b000;
	$monitor("time = %2d, A =%32b, B=%32b, A+B=%32b,S=%3b",$time, A, B,F,S);
#`DELAY;
	A = 32'b00000001000000010000000100000001;
	B = 32'b01100001011000010110000101100001; 
	Ci=1'b0; 
	S=3'b001;
	$monitor("time = %2d, A =%32b, B=%32b, A XOR B=%32b,S=%3b",$time, A, B,F,S);
#`DELAY;
	A = 32'b10000001000000010000000100000001;
	B = 32'b01100001011000010110000101100001; 
	Ci=1'b1; 
	S=3'b010;
	$monitor("time = %2d, A =%32b, B=%32b, A-B=%32b,S=%3b",$time, A, B,F,S);
#`DELAY;
	A = 32'b10000001000000010000000100000001;
	B = 32'b01100001011000010110000101100001; 
	Ci=1'b0; 
	S=3'b100;
	$monitor("time = %2d, A =%32b, B=%32b, A>B=%32b,S=%3b",$time, A, B,F,S);
#`DELAY;
	A = 32'b10000001000000010000000100000001;
	B = 32'b01100001011000010110000101100001; 
	Ci=1'b0; 
	S=3'b101;
	$monitor("time = %2d, A =%32b, B=%32b, A NOR B=%32b,S=%3b",$time, A, B,F,S);
#`DELAY;
	A = 32'b10000001000000010000000100000001;
	B = 32'b01100001011000010110000101100001; 
	Ci=1'b0; 
	S=3'b111;
	$monitor("time = %2d, A =%32b, B=%32b, A OR B=%32b,S=%3b",$time, A, B,F,S);
end
endmodule