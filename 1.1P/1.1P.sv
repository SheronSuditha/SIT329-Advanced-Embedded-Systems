//blinks faster 
module task_blinker (input clock, output reg [7:0] led);
    reg [31:0] counter; //32 bit register / counter 

    always @(posedge clock) begin
        if(counter <= 25000000) // will blink for 0.5 secs clock freq is 50MHz
        begin
            counter <= counter + 1;
        end
        else
        begin
            counter <= 0; // reset the counter 
            led <= ~led; //opposite of the current logical inverse  
        end
    end
endmodule

//blinks slower compared to the above code 
module task_blinker_faster (input clock, output reg [7:0] led);
    reg [31:0] counter; //32 bit register / counter 

    always @(posedge clock) begin
        if(counter <= 50000000) // will blink for 0.5 secs clock freq is 50MHz
        begin
            counter <= counter + 1;
        end
        else
        begin
            counter <= 0; // reset the counter 
            led[7:0] = ~led[7:0]; //opposite of the current logical inverse of each led assigned.
        end
    end
endmodule