module halfAdder_8bitDataflow(input [7:0] a,b, output [7:0] s,co);
  assign s = a^b;
  assign co = a&b;
endmodule