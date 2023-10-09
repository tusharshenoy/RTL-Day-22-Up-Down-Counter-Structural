///Testbench for 4 Bit UP/DOWN Counter
module up_down_counter_tb();

reg ud,reset,clk;
wire [3:0]Q;

up_down_counter dut(.ud(ud),.reset(reset),.clk(clk),.Q(Q));

initial begin
ud=1'b1; //Up Counting
clk=1'b0;
reset=1'b1;
#3 reset=1'b0;
#40 ud=1'b0; //Down Counting
#40 $finish;
end
//The Above Code can be manipulated to obtain Up count from 0 to 255 and Down count from 255 to 0
always #1 clk=~clk;
endmodule
