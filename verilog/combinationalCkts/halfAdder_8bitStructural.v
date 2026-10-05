module halfAdder_8bitStructural(input [7:0] a,b, output [7:0] s,co);
  xor x1(s[0],a[0],b[0]);
  and a1(co[0],a[0],b[0]);
  xor x2(s[1],a[1],b[1]);
  and a2(co[1],a[1],b[1]);
  xor x3(s[2],a[2],b[2]);
  and a3(co[2],a[2],b[2]);
  xor x4(s[3],a[3],b[3]);
  and a4(co[3],a[3],b[3]);
  xor x5(s[4],a[4],b[4]);
  and a5(co[4],a[4],b[4]);
  xor x6(s[5],a[5],b[5]);
  and a6(co[5],a[5],b[5]);
  xor x7(s[6],a[6],b[6]);
  and a7(co[6],a[6],b[6]);
  xor x8(s[7],a[7],b[7]);
  and a8(co[7],a[7],b[7]);
endmodule
