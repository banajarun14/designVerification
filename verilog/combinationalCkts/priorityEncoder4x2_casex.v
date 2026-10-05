//Using casex
module priorityEncoder4x2_casex(input [3:0]i, output reg [1:0]y);
  always@(i) begin
    casex (i)

	  /*//LSB Bit Priority encoder
	  4'bxxx1: y=2'b00;
	  4'bxx10: y=2'b01;
	  4'bx100: y=2'b10;
	  4'b1000: y=2'b11;*/

	  //MSB Bit Priority encoder
	  4'b0001: y=2'b00;
	  4'b001x: y=2'b01;
	  4'b01xx: y=2'b10;
	  4'b1xxx: y=2'b11;

	  default y=2'bxx;

	endcase
  end
endmodule
