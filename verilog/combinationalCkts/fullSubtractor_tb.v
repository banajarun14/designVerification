module tb_fs;
  reg a,b,bin;
  wire diff,brw;
  fullSubtractor_usg_hs dut(a,b,bin,diff,brw);
  initial begin
    a=0;
    b=0;
    bin=0;
    $monitor("a=%b,b=%b,bin=%b,diff=%b,brw=%b",a,b,bin,diff,brw);
    repeat (10) begin
        {a,b,bin} = $random;
        #1;
        //$display("a=%b,b=%b,bin=%b,diff=%b,brw=%b",a,b,bin,diff,brw);
    end
  end
endmodule