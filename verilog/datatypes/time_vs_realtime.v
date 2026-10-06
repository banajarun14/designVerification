module top;
  realtime rt; //not synthesizable only used in tbs
  time t; //not synthesizable only used in tbs
  initial begin
    #5.5;
  	rt = $realtime;
    t = $time;
    $display("rt=%0t, t=%0.2f",rt,t);
  end
endmodule

//OUTPUT=> rt=6, t=6.00