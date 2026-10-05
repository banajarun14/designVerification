module fullSubtractor_usg_hs(input a,b,bin, output diff,brw);
  wire d1,w1,w2,w3;
  halfSubtractor_dataflow g1(.a(a),.b(b),.diff(d1),.brw(w1));
  halfSubtractor_dataflow g2(.a(d1),.b(bin),.diff(diff),.brw(w2));
  and g3(w3,~a,bin);
  or g4(brw,w1,w2,w3);
endmodule