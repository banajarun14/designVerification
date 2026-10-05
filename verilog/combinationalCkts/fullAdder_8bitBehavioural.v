module fullAdder_8bitBehavioural(input [7:0] a,b,cin, output reg [7:0] sum,carry);
  always@(a,b,cin) begin
  sum = a^b^cin;
  carry = a&b | a&cin | b&cin;
  end
endmodule