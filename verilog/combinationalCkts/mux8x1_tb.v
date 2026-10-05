module mux8x1_tb;
  reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
  wire y;
  mux8x1_usg_mux4x1_mux2x1 dut(.*);
  initial begin
  $monitor("i0=%b,i1=%b,i2=%b,i3=%b,i4=%b,i5=%b,i6=%b,i7=%b,s0=%b,s1=%b,s2=%b,y=%b",i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);
    repeat(10) begin
	{i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2} = $random;
	#1;
    $display("i0=%b,i1=%b,i2=%b,i3=%b,s0=%b,s1=%b",i0,i1,i2,i3,s0,s1,y);
    end
  end
endmodule