//Operators b)Logical (&&, ||)

module logical;
//integer a,b;
reg [3:0] a,b;
  initial begin
    a = 4'b1010;
	b = 4'b1011;
	//c=a||b;  //logical OR
	//c=a&&b;  //logical AND
	$display("a=%0b,b=%0b,a&&b=%0b",a,b,a&&b);
	$display("a=%0b,b=%0b,a||b=%0b",a,b,a||b);
  end
endmodule