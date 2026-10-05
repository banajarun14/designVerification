module fullAdder_8bitDataflow(input [7:0] a,b,cin, output [7:0] sum,carry);
  assign sum = a^b^cin;
  assign carry = a&b | a&cin | b&cin;
endmodule
