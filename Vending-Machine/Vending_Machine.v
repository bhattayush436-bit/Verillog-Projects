module vending_machine(
input coin_5,coin_10,clk,rst,
output reg dispense, change
    );
    parameter s0 = 2'b00;
    parameter s5 = 2'b01;
    parameter s10 = 2'b10;
    reg [1:0] state;
always@(posedge clk)
    begin
    if(rst == 1'b1)
    begin
    state <= s0;
    dispense <= 0;
    change<=0;
    end
    else
      begin
      case (state)
      s0: begin
      change <= 0;
      dispense <= 0;
       if(coin_5 == 1'b0 && coin_10 == 1'b0)
         begin
         dispense <= 1'b0;
         state <= s0;
         end
         else if(coin_5 == 1'b1)
         begin
         dispense <= 1'b0;
         state <= s5;
         end
         else if (coin_10 == 1'b1)
       begin
       dispense <= 1'b0;
       state <= s10;
       change <= 1'b0;
       end
      end
      s5: begin
       if(coin_10 == 1'b1)
       begin
       dispense <= 1'b0;
       state <= s10;
       change<=1'b1;
       end
       else if(coin_5 == 1'b0)
       begin
       dispense <= 1'b0;
       state <= s5;
       change <= 1'b0;
       end
       else if (coin_5 == 1'b1)
       begin
       dispense <= 1'b0;
       state <= s10;
       change <= 1'b0;
       end
      
      end
      s10: begin
      dispense <= 1'b1;
      state <= s0;
      end
      default: 
      begin
      state <= s0;
      dispense <= 0;
      change <= 0;
      end
      endcase
      end
end
endmodule
