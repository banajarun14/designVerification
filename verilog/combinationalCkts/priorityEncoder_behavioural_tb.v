//behavioural tb
module priorityEncoder4x2_tb;
  reg i0,i1,i2,i3;
  wire y0,y1;
  priorityEncoder4x2 dut(i0,i1,i2,i3,y0,y1);

    initial begin
        repeat(10) begin
          {i0,i1,i2,i3} = $random;
            #1;
          //$display("i0=%0b,i1=%0b,i2=%0b,i3=%0b, y0=%0b,y1=%0b",i0,i1,i2,i3,y0,y1);
        end
        $monitor("i0=%0b,i1=%0b,i2=%0b,i3=%0b, y0=%0b,y1=%0b",i0,i1,i2,i3,y0,y1);
    end
endmodule