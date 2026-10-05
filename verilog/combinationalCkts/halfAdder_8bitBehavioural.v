module halfAdder_8bitBehavioural(input [7:0] a,b, output reg [7:0] s,co);
  always@(*) begin
   s = a^b;
   co = a&b;
  end
endmodule
