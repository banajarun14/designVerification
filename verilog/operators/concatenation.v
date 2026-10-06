//Operators d)Concatenation ({})

module concat;
reg [3:0] a,b;
reg [19:0] c;
  initial begin
    a = 4'b1010;
	b = 4'b1011;
	c = {{2{a}},{3{b}}};
    $display("a=%0b,b=%0b,{c}=%0b",a,b,c);
  end
endmodule


/*=============================================
OUTPUT =>
 # a=1010,b=1011,{c}=10101010101110111011
 */