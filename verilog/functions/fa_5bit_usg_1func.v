module fa_5bit_usg_1func;
    reg [4:0]a,b;
    reg cin;
    reg [4:0]sum;
    reg cout;

    function reg[5:0] fa_sum_cout(input reg[4:0] a,b, input reg cin );
        begin
            fa_sum_cout = a+b+cin;
        end
    endfunction

    initial begin
        repeat(10) begin
            {a,b,cin} = $random;
            {cout,sum} = fa_sum_cout(a,b,cin);
            $display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
        end
    end
endmodule