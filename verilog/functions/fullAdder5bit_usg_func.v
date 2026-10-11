module fullAdder5bit_usg_func;
    reg [4:0]a,b;
    reg cin;
    reg [4:0]sum;
    reg cout;

    function reg[5:0] fa_sum(input reg[4:0] a,b, input reg cin );
        begin
            fa_sum = a+b+cin;
        end
    endfunction
    function reg[5:0] fa_cout(input reg[4:0] a,b, input reg cin );
        reg[5:0] temp;
        begin
            temp = a+b+cin;
            fa_cout = temp[5]; //last bit will be carry out
        end
    endfunction

    initial begin
        repeat(10) begin
            {a,b,cin} = $random;
            sum = fa_sum(a,b,cin);
            cout = fa_carry(a,b,cin);
            $display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
        end
    end
endmodule