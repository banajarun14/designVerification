module fullAdder_behavioural(input a,b,cin, output reg sum, cout);
    always@(a,b,cin) begin
        sum = a^b^cin;
        cout = a&b | b&cin | a&cin;
    end
endmodule