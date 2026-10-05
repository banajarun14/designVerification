//behavioural
module priorityEncoder4x2(input i0,i1,i2,i3, output reg y0,y1);
    always@(*) begin
        if(i0) begin //xxx1
            {y1,y0}=2'b00;//00
        end
        else if(!i0 & i1) begin //xx10
            {y1,y0}=2'b01;//01
        end
        else if(!i0 & !i1 & i2) begin //x100
            {y1,y0}=2'b10;//10
        end
        else if(!i0 & !i1 & !i2 & i3) begin //1000
            {y1,y0}=2'b11;//11
        end
        else begin //default
            {y1,y0}=2'bxx;
        end
    end
endmodule
