//method1 -> Behavioural If-Else
module mux2x1_ifElse(input a,b,s, output reg y);
	always@(*) begin
		if(s) y=b;
		else y=a;
	end
endmodule

//method2 -> Behavioural Case
module mux2x1_case(input a,b,s, output reg y);
	always@(*) begin
        case({s})
            1'b0 : y=a;
            1'b1 : y=b;
        endcase
	end
endmodule
