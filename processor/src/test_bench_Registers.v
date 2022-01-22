`define DELAY 20
module test_bench_Registers();
	wire [31:0] read_data_1, read_data_2;
	reg [31:0] write_data;
	reg [2:0] read_reg_1, read_reg_2, write_reg;
	reg RegWrite, clk;
	Registers ahmet(read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, RegWrite, clk );
initial begin
	$readmemb("register.txt",ahmet.reg_array);
	#`DELAY;
	read_reg_1=3'b001; read_reg_2=3'b010; write_reg=3'b011; RegWrite=1'b0; clk=1'b1;
	#`DELAY;
	read_reg_1=3'b101; read_reg_2=3'b011; write_reg=3'b001; RegWrite=1'b0; clk=1'b1;
	end
initial begin
$monitor("read_data_1=%32b,read_data_2=%32b, write_data=%32b(Since it is in the registers module, there is no data yet),\n read_reg_1=%3b, read_reg_2=%3b, write_reg=%3b, RegWrite=%1b, clk=%1b",
					read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, RegWrite, clk );
end
endmodule