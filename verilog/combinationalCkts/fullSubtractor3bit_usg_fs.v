module fullSubtractor3bit_usg_fs(input [2:0]a,[2:0]b,bin, output [2:0]diff,brw);
  wire [1:0]b1;
  fullSubtractor_usg_hs g1(.a(a[0]),.b(b[0]),.bin(bin),.diff(diff[0]),.brw(b1[0]));
  fullSubtractor_usg_hs g2(.a(a[1]),.b(b1[1]),.bin(b1[0]),.diff(diff[1]),.brw(b1[1]));
  fullSubtractor_usg_hs g3(.a(a[2]),.b(b1[2]),.bin(b1[1]),.diff(diff[2]),.brw(brw));
endmodule