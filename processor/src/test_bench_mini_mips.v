`define DELAY 20
module test_bench_mini_mips();
	reg clk;
	Mips ahmet(clk);
initial begin
	$readmemb("instruction.txt",ahmet.m0.memory);
	$readmemb("register.txt",ahmet.m3.reg_array);
	$readmemb("data.txt",ahmet.m8.memory);
	
end
initial begin
$monitor("time: %2d,pc=%5b ,ins: %16b\n,read data 1=%32b,read data 2=%32b, alu input 2=%32b,write Data: %32b\n",
				$time,ahmet.pc_current,ahmet.instruction,ahmet.read_data_1,ahmet.read_data_2,ahmet.Alu_choose,ahmet.write_data);
end
initial
        begin
        clk = 0;
            forever
                #10 clk = ~clk;
        end

endmodule