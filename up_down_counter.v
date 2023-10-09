//Verilog Code for 4 Bit UP/DOWN Counter
module up_down_counter(ud,reset,clk,Q);

input ud,reset,clk;
output [3:0]Q;

wire [3:0]Qb;
wire [9:0]w;

JK_Flip_Flop JK0(.J(1'b1),.K(1'b1),.clk(clk),.reset(reset),.Q(Q[0]),.Qb(Qb[0]));
not N(w[0],ud);
and A1(w[1],ud,Q[0]);
and A2(w[2],Qb[0],w[0]);
or O1(w[3],w[1],w[2]);

JK_Flip_Flop JK1(.J(w[3]),.K(w[3]),.clk(clk),.reset(reset),.Q(Q[1]),.Qb(Qb[1]));
and A3(w[4],w[1],Q[1]);
and A4(w[5],Qb[1],w[2]);
or O2(w[6],w[4],w[5]);

JK_Flip_Flop JK2(.J(w[6]),.K(w[6]),.clk(clk),.reset(reset),.Q(Q[2]),.Qb(Qb[2]));
and A5(w[7],w[4],Q[2]);
and A6(w[9],Qb[2],w[5]);
or O3(w[8],w[7],w[9]);

JK_Flip_Flop JK3(.J(w[8]),.K(w[8]),.clk(clk),.reset(reset),.Q(Q[3]),.Qb(Qb[3]));
endmodule
