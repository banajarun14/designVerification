
//Shift Operator i)Right shift, left shift ii)Implementing multiplication using 
shift operator 1)65*37 implement using shift operators

module multiplication_usg_shift;

    reg [7:0] a = 65; //2^6+1=65
    reg [7:0] b = 37; //8'b00100101
    reg [15:0] product;
    integer i;
    initial begin
        product=0;
        for(i=0;i<8;i=i+1) begin
            if(b[i]) begin
                product = product+(a<<i);
                $display("a=%b,b=%b,(a<<i)=%b",a,b,a<<i);
            end
        end
        $display("a=%d,b=%d,product=%d",a,b,product);
    end
endmodule


/*OUTPUT =>
# a=01000001,b=00100101,(a<<i)=01000001
# a=01000001,b=00100101,(a<<i)=00000100
# a=01000001,b=00100101,(a<<i)=00100000
# a= 65,b= 37,product= 2405
*/