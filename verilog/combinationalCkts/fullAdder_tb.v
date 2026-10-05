//Full Adder Test Bench & Write $monitor code for monitoring the full adder ports.
module fullAdder_tb;
  reg a,b,cin;
  wire sum,carry;
  fullAdder_dataflow dut(a,b,cin,sum,carry);
  integer seed = 11;
  initial begin
    $monitor("$a=%b,$b=%b,$cin=%b,$sum=%b,$carry=%b",a,b,cin,sum,carry);
    repeat (8) begin
        {a,b,cin} = $random(seed);
        #1;
    end
  end
endmodule