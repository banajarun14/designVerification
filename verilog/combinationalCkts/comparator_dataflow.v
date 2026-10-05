module comparator_dataflow(input a,b, output y1,y2,y3);
  always@(*) begin
    y1=~(a^b); //a=b
	y2=a&~b; //a>b
	y3=~a&b; //a<b
  end
endmodule