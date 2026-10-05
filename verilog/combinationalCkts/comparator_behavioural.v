module comparator_behavioural(input a,b, output reg y1,y2,y3);
  always@(*) begin
    y1=~(a^b); //a=b
	y2=a&~b; //a>b
	y3=~a&b; //a<b
  end
endmodule