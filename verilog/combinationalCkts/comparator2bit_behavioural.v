module comparator2bit_behavioural(input a1,a0,b1,b0, output reg y1,y2,y3);
  always@(*) begin
   y1 = (~(a1^b1))&(~(a0^b0)); //a=b
   y2 = (a1&~b1) | (~(a1^b1))&(a0&~b0); //a>b
   y3 = (~a1&b1) | (~(a1^b1))&(~a0&b0); //a<b
  end
endmodule