//Operators a)Arithmetic (+, -, *, /, %)

module arithmetic;
integer a,b
integer sum, sub, posSub, mul, div, rem;
  initial begin
    a = 10;
	b = 30;
	sum=a+b;  //addition 
	sub=b-a;  //subtraction(-ve)
	posSub=a-b;  //subtraction(+ve)
	mul=a*b;  //multiplication
	div=b/a;  //division
	rem=b%a;  //modulus or reminder
	$display("a=%0d,b=%0d,sum=%0d",a,b,sum);
    $display("a=%0d,b=%0d,sub=%0d",a,b,sub);
    $display("a=%0d,b=%0d,posSub=%0d",a,b,posSub);
    $display("a=%0d,b=%0d,mul=%0d",a,b,mul);
    $display("a=%0d,b=%0d,div=%0d",a,b,div);
    $display("a=%0d,b=%0d,rem=%0d",a,b,rem);
  end
endmodule