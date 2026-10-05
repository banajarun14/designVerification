module mux4x1_tb;
  reg i0,i1,i2,i3,s0,s1;
  wire y;
  mux_4x1 dut(i0,i1,i2,i3,s0,s1);
  initial begin
  $monitor("i0=%b,i1=%b,i2=%b,i3=%b,s0=%b,s1=%b,y=%b",i0,i1,i2,i3,s0,s1,y);
    repeat(10) begin
        {i0,i1,i2,i3,s0,s1} = $random;
        #1;
        $display("i0=%b,i1=%b,i2=%b,i3=%b,s0=%b,s1=%b",i0,i1,i2,i3,s0,s1,y);
    end
  end
endmodule