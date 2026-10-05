//Full Adder 8bit Test Bench & Write $monitor code for monitoring the full adder ports.
module fullAdder_8bit_tb;
  reg [7:0] a,b,cin;
  wire [7:0] sum,carry;
  full_Adder dut(a,b,cin,sum,carry);
  //integer seed = 11;
  initial begin
    $monitor("$a=%b,$b=%b,$cin=%b,$sum=%b,$carry=%b",a,b,cin,sum,carry);
    repeat (8) begin
        {a,b,cin} = $random;
        #1;
    end
  end
endmodule