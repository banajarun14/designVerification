module comparator2bit_tb;
  reg a1,a0,b1,b0;
  wire y1,y2,y3;
  comparator2bit_dataflow dut(a1,a0,b1,b0,y1,y2,y3);
  initial begin
    $monitor("a1=%b,a0=%b,b1=%b,b0=%b,[a=b]=%b,[a>b]=%b,[a<b]=%b",a1,a0,b1,b0,y1,y2,y3);
    repeat (20) begin
        {a1,a0,b1,b0} = $random;
        #10;
        //$display("a1=%b,a0=%b,b1=%b,b0=%b,[a=b]=%b,[a>b]=%b,[a<b]=%b",a1,a0,b1,b0,y1,y2,y3);
    end
  end
endmodule