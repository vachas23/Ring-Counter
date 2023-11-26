module ringcounter(in,clk,reset);
    input [3:0]in;
    input clk,reset;
    reg d1,d2,d3,d4;
    always@(posedge clk)
    begin
        if(!reset)begin
          {d4,d3,d2,d1}<=in[3:0];
       end
        else
        begin
            d1<=d4;
            d2<=d1;
            d3<=d2;
            d4<=d3;
        end
    end
endmodule
