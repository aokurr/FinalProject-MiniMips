`define DELAY 20
module test_bench_data_memory();
 reg clk;
 reg [31:0]   access_addr;
 reg [31:0]   write_data;
 reg mem_write;
 reg mem_read;
 wire [31:0]   read_data;
 Data_Memory ahmet(clk,access_addr,write_data,mem_write, mem_read,read_data);
 initial begin
 $readmemb("data.txt",ahmet.memory);
 access_addr=32'b00000000000000000000000000000011; mem_read=1'b1; mem_write=1'b0;
#`DELAY;
 end
 initial begin
$monitor("access_addr=%32b,mem_read=%1b,mem_write=%1b,read_data=%32b",
					access_addr,mem_read,mem_write,read_data);


end
endmodule