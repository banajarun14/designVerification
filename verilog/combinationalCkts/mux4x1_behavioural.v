//a. Behavioural If-Else
module mux4x1_behaviouralIfElse(input i0,i1,i2,i3,s0,s1,output reg y);
  always@(i0,i1,i2,i3,s0,s1) begin
   if(s0==0&s1==0) y=i0;
   else if(s0==0&s1==1) y=i1;
   else if(s0==1&s1==0) y=i2;
   else y=i3;
  end
endmodule

//b. Behavioural Case
module mux4x1_behaviouralCase(input i0,i1,i2,i3,s0,s1,output reg y);
  always@(i0,i1,i2,i3,s0,s1) begin
    case ({s0,s1})
	  2'b00: y=i0;
	  2'b01: y=i1;
	  2'b10: y=i2;
	  2'b11: y=i3;
	endcase
  end
endmodule
