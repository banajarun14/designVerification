module comparator_tb;
  reg a,b;
  wire y1,y2,y3;
  comparator_dataflow dut(a,b,y1,y2,y3);
  initial begin
    $monitor("a=%b,b=%b,[a=b]=%b,[a>b]=%b,[a<b]=%b",a,b,y1,y2,y3);
    repeat (10) begin
        {a,b} = $random;
        #1;
        $display("a=%b,b=%b,[a=b]=%b,[a>b]=%b,[a<b]=%b",a,b,y1,y2,y3);
    end
  end
endmodule