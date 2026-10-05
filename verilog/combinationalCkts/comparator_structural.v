module comparator_structural(input a,b, output y1,y2,y3);
    xnor x1(y1,a,b); //a=b
    and a1(y2,a,~b); //a>b
    and a2(y3,~a,b); //a<b
endmodule