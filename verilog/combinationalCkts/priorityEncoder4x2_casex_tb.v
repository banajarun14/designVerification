module priorityEncoder4x2_tb;
    reg [3:0]i;
    wire [1:0]y;
    priorityEncoder4x2_casex dut(i,y);

    initial begin
        repeat(10) begin
            i = $random;
            #1;
            $display("i=%0d, y=%0d",i,y);
        end
        $monitor("i=%0d, y=%0d",i,y);
    end
endmodule
