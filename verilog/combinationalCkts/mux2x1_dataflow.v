module mux2x1_dataflow(input a,b,s, output y);
	assign y=s?b:a;
endmodule
