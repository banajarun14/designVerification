//Operators E)Bitwise ( &, |, ^, ~^)

module bitwise;
reg [3:0] a,b;
  initial begin
    a = 2'b10;  //0010
	b = 3'b101;  //0101
    $display("a=%0b,b=%0b,(a&b)=%0b",a,b,a&b);
    $display("a=%0b,b=%0b,(a|b)=%0b",a,b,a|b);
    $display("a=%0b,b=%0b,(a^b)=%0b",a,b,a^b);
    $display("a=%0b,b=%0b,(a~^b)=%0b",a,b,a~^b);
  end
endmodule


/*OUTPUT
# a=1010,b=1011,(a&b)=1010
# a=1010,b=1011,(a|b)=1011
# a=1010,b=1011,(a^b)=1
# a=1010,b=1011,(a~^b)=1110
================================
# a=10,b=101,(a&b)=0
# a=10,b=101,(a|b)=111
# a=10,b=101,(a^b)=111
# a=10,b=101,(a~^b)=1000
*/