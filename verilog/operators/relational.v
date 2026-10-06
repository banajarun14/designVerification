//Operators c)Relational (<=, >=, ==, <, >)

module relational;
integer a,b;
  initial begin
    a = 4'b1010;
	b = 4'b1010;
    $display("a=%0b,b=%0b,(a<=b)=%0b",a,b,a<=b);
    $display("a=%0b,b=%0b,(a>=b)=%0b",a,b,a>=b);
    $display("a=%0b,b=%0b,(a==b)=%0b",a,b,a==b);
    $display("a=%0b,b=%0b,(a<b)=%0b",a,b,a<b);
    $display("a=%0b,b=%0b,(a>b)=%0b",a,b,a>b);
  end
endmodule

/* OUTPUT =>
# a=10,b=30,(a<=b)=1
# a=10,b=30,(a>=b)=0
# a=10,b=30,(a==b)=0
# a=10,b=30,(a<b)=1
# a=10,b=30,(a>b)=0
==========================
# a=1110,b=1010,(a<=b)=0
# a=1110,b=1010,(a>=b)=1
# a=1110,b=1010,(a==b)=0
# a=1110,b=1010,(a<b)=0
# a=1110,b=1010,(a>b)=1
=============================
# a=1010,b=1010,(a<=b)=1
# a=1010,b=1010,(a>=b)=1
# a=1010,b=1010,(a==b)=1
# a=1010,b=1010,(a<b)=0
# a=1010,b=1010,(a>b)=0
*/