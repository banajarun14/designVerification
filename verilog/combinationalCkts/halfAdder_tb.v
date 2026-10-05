//testbench for 8bit halfadder models
module halfAdder_tb;
  reg [7:0] a,b; //input
  wire [7:0] s,co; //output
  halfAdder_dataflow dut(a,b,s,co); //change module names accordingly
  initial begin
    $monitor("a=%b,b=%b,s=%b,co=%b",a,b,s,co);
    repeat (10) begin
        {a,b} = $random;
        #1;
    end
  end
endmodule