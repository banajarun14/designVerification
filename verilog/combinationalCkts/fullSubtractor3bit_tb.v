module fullSubtractor3bit_tb;
  reg [2:0] a;
  reg [2:0] b;
  reg bin;
  wire [2:0] diff;
  wire bout;
  fullSubtractor3bit_usg_fs dut(a,b,bin,diff,bout);
  initial begin
    $monitor("a=%b,b=%b,bin=%b,diff=%b,bout=%b",a,b,bin,diff,bout);
    repeat (10) begin
        {a,b,bin} = $random;
        #10;
        $display("a=%b,b=%b,bin=%b,diff=%b,brw=%b",a,b,bin,diff,brw);
    end
  end
endmodule