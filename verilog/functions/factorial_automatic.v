module factorial_automatic;
    parameter width = 5;
    integer result;

    function automatic integer factorial_num(input integer num); //automatic
        if(num>=2) factorial_num = num*(factorial_num(num-1));
        else factorial_num = 1;
    endfunction

    initial begin
    result =  factorial_num(width);
    $display("factorial result = %0d", result);
    end
endmodule
