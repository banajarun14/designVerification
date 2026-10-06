//Operators g) Shift (<<, >>)

module shift;
reg [3:0] a;
reg [3:0] left_shift, right_shift;
  initial begin
    a = 2'b11;
    left_shift=a<<1; //fills zero  0110
	right_shift=a>>1;  //fills zero 0101
    $display("a=%0b,(a>>1)=%0b",a,right_shift);
    $display("a=%0b,(a<<1)=%0b",a,left_shift);
  end
endmodule


/*OUTPUT 
a=11,(a>>1)=1
a=11,(a<<1)=110
*/