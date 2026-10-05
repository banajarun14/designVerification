module decoder2x4_case(input [1:0]i, output reg [3:0]y);
  always@(i) begin
    case ({i})
	  2'b00: y[3:0]=4'b0001;
	  2'b01: y[3:0]=4'b0010;
	  2'b10: y[3:0]=4'b0100;
	  2'b11: y[3:0]=4'b1000;
	  default y=4'b0001;
	endcase
  end
endmodule