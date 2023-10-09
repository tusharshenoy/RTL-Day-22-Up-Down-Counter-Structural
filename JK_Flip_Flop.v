//JK Flip Flop Code Using Behavioural modelling
module JK_Flip_Flop(J,K,clk,reset,Q,Qb);

input J,K,clk,reset;
output reg Q,Qb;

always@(posedge clk,posedge reset)
begin
if(reset)
   Q=1'b0;
   else
   begin
        if(J==1'b0&&K==1'b0)
            Q=Q;
        else if(J==1'b0&&K==1'b1)
            Q=1'b0;
        else if(J==1'b1&&K==1'b0)
            Q=1'b1;
        else 
            Q=~Q;
    end
   Qb<=~Q;
end

endmodule
