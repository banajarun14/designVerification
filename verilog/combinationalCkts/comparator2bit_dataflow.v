module comparator2bit_dataflow(input a1,a0,b1,b0, output y1,y2,y3);
  assign y1 = (~(a1^b1))&(~(a0^b0)); //a=b
  assign y2 = (a1&~b1) | (~(a1^b1))&(a0&~b0); //a>b
  assign y3 = (~a1&b1) | (~(a1^b1))&(~a0&b0); //a<b
endmodule