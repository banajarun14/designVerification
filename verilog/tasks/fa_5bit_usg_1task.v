module fa_5bit_usg_1task;
    reg [4:0]a,b;
    reg cin;
    reg [4:0]sum;
    reg cout;

    task fa_sum_cout(input reg[4:0] a,b, input reg cin, output reg[4:0] sum, output reg cout );
        reg[5:0] temp;
        begin
            sum = a+b+cin;
            cout = temp[5];
        end
    endtask

    initial begin
        repeat(10) begin
            {a,b,cin} = $random;
            fa_sum_cout(a,b,cin,sum,cout);
            $display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
        end
    end
endmodule