module fullAdder5bit_usg_task;
    reg [4:0]a,b;
    reg cin;
    reg [4:0]sum;
    reg cout;

    task fa_sum(input reg[4:0] a,b, input reg cin, output reg[4:0] sum );
        begin
            sum = a+b+cin;
        end
    endtask
    task fa_cout(input reg[4:0] a,b, input reg cin, output reg cout );
        reg[5:0] temp;
        begin
            temp = a+b+cin;
            cout = temp[5]; //last bit will be carry out
        end
    endtask

    initial begin
        repeat(10) begin
            {a,b,cin} = $random;
            fa_sum(a,b,cin,sum);
            fa_carry(a,b,cin,cout);
            $display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
        end
    end
endmodule