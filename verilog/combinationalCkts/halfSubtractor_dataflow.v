module halfSubtractor_dataflow(input a,b, output diff,brw);
    assign diff = a^b;
    assign brw = ~a&b;
endmodule