module fullAdder_8bitDataflow(input [7:0] a,b,input cin, output [7:0] sum,output carry);
  assign sum = a^b^cin;
  assign carry = a&b | a&cin | b&cin;
endmodule
