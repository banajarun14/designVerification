module halfSubtractor_tb;
  reg a,b;
  wire diff,brw;
  halfSubtractor_dataflow dut(a,b,diff,brw);
  initial begin
    $monitor("a=%b,b=%b,diff=%b,brw=%b",a,b,diff,brw);
    repeat (10) begin
        {a,b} = $random;
        #1;
    end
  end
endmodule
