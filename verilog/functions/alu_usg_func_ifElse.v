module alu_usg_func_ifElse;
    reg [7:0] in1,in2;
    reg [3:0] oper;
    reg [31:0] result;

    function reg [31:0] alu_ifelse(input [7:0] in1, input [7:0] in2, input [3:0] oper);
        begin
            if(oper==4'b0000) alu_ifelse=in1+in2;
            else if(oper==4'b0001) alu_ifelse=in1-in2;
            else if(oper==4'b0010) alu_ifelse=in1/in2;
            else if(oper==4'b0011) alu_ifelse=in1*in2;
            else if(oper==4'b0100) alu_ifelse=in1%in2;
            else if(oper==4'b0101) alu_ifelse=in1**in2;
            else if(oper==4'b0110) alu_ifelse=in1<<in2;
            else if(oper==4'b0111) alu_ifelse=in1>>in2;
            else alu_ifelse=0;
        end
    endfunction
    
    initial begin
        repeat(10) begin
            {in1,in2,oper} = $random;
            result = alu_ifelse(in1,in2,oper);
            #5; //not synthesizable
            $display("in1=%0d,in2=%0d,oper=%d,alu_ifelse=%0d",in1,in2,oper,result);
        end
    end
endmodule