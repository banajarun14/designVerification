module mul_7x8;

    reg [2:0] a = 7; //3'b111
    reg [3:0] b = 8; //4'b1000
    reg [8:0] product;
    integer i;
    initial begin
        product = (a<<3); //7x2^3
        $display("a=%d,b=%d,product=%d",a,b,product);
    end
endmodule