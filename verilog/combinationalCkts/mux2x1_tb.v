module mux2x1_tb;
	reg a,b,s;
	wire y;
	mux2x1_datflow dut(a,b,s,y); //dut name
	initial begin
	repeat(10) begin
		{a,b,s} = $random;
		#0;
		//$display("a=%0b | b=%0b | s=%0b | y=%0b",a,b,s,y);	
	end
	end
endmodule