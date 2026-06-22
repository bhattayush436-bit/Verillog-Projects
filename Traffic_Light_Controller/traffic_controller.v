module traffic_light(
input clk, rst , din,
output reg dout,
output reg[1:0] light
    );
    parameter RED = 2'd0;
    parameter GREEN = 2'd1;
    parameter YELLOW = 2'd2;
    reg [1:0] nlight;
    always@(posedge clk)
    if(rst == 1'b1)
    begin
    light<=RED;
    end
    else 
    begin
    light <= nlight;
    end
    always@(*)
    begin
    
    case (light)
    RED: begin
    dout = 0;
    if(din == 1'b1)
    begin
    nlight = GREEN;
    end
    else 
    begin
    nlight = RED;
    end
    end
     GREEN: begin
    dout = 0;
    if(din == 1'b1)
    begin
    nlight = YELLOW;
    end
    else 
    begin
    nlight = GREEN;
    end
    end
     YELLOW: begin
    dout = 1;
    if(din == 1'b1)
    begin
    nlight = RED;
    end
    else 
    begin
    nlight = YELLOW;
    end
    end
    default: begin
    nlight = RED;
    dout = 0 ;
    end
    endcase
    end
endmodule
