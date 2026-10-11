module factorial;
    integer result;

    function integer factorial_num(input integer num); //not automatic so recursion doesnot work so factorial result is wrong
        if(num>1) factorial_num = num*factorial_num(num-1);
        else factorial_num = 1;
    endfunction

    initial begin
        result = factorial_num(5);
        $display("result=%0d",result);
    end
endmodule