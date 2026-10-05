module encoder4x2_tb;
  reg [3:0]i;
  wire [1:0]y;
  encoder4x2_case dut(i,y);
  initial begin
    $monitor("i[0]=%b,i[1]=%b,i[2]=%b,i[3]=%b,y[0]=%b,y[1]=%b",i[0],i[1],i[2],i[3],y[0],y[1]);
    repeat (10) begin
        {i}= $random;
        #3;
        //$display("i=%b,y=%b",i,y);
    end
  end
endmodule