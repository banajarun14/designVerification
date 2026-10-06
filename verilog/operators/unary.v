//Operators F) Unary reduction (&, |, ^, ~^)

module unary;
reg [3:0] a;
reg result_and, result_or, result_xor, result_xnor;
  initial begin
    a = 4'b1011;
	result_and = &a;
	result_or = |a;
	result_xor = ^a;
	result_xnor = ~^a;
	$display("a=%0b,(&a)=%0b",a,result_and);
    $display("a=%0b,(|a)=%0b",a,result_or);
    $display("a=%0b,(^a)=%0b",a,result_xor);
    $display("a=%0b,(~^a)=%0b",a,result_xnor);
  end
endmodule


/*OUTPUT
# a=1011,(&a)=0
# a=1011,(|a)=1
# a=1011,(^a)=1
# a=1011,(~^a)=0
*/