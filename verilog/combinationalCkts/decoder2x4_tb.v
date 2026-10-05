module decoder2x4_tb;
  reg [1:0]i;
  wire [3:0]y;
  decoder_2x4 dut(i,y);
  initial begin
    $monitor("i[0]=%b,i[1]=%b,y[0]=%b,y[1]=%b,y[2]=%b,y[3]=%b",i[0],i[1],y[0],y[1],y[2],y[3]);
    repeat (10) begin
        {i[1],i[0]} = $random;
        #1;
        //$display("i[0]=%b,i[1]=%b,y[0]=%b,y[1]=%b,y[2]=%b,y[3]=%b",i[0],i[1],y[0],y[1],y[2],y[3]);
    end
  end
endmodule