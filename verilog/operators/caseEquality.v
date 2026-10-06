//Operators i) Case equality (!==, ===)

module case_equality;
reg [1:0] a,b;
  initial begin
    a=2'b10;
	b=2'b11;
    $display("a=%b,b=%b,(a==b)=%0b",a,b,a==b); //doesnot compare x
    $display("a=%b,b=%b,(a===b)=%0b",a,b,a===b); //does compare x
    $display("a=%b,b=%b,(a!=b)=%0b",a,b,a!=b);
    $display("a=%b,b=%b,(a!==b)=%0b",a,b,a!==b);
  end
endmodule


/*OUTPUT =>
# a=1x,b=xx,(a==b)=x
# a=1x,b=xx,(a===b)=0
# a=1x,b=xx,(a!=b)=x
# a=1x,b=xx,(a!==b)=1
===========================
# a=10,b=1x,(a==b)=x
# a=10,b=1x,(a===b)=0
# a=10,b=1x,(a!=b)=x
# a=10,b=1x,(a!==b)=1
===========================
# a=10,b=11,(a==b)=0
# a=10,b=11,(a===b)=0
# a=10,b=11,(a!=b)=1
# a=10,b=11,(a!==b)=1
*/