module tb;
reg [3:0]A,B;
reg [3:0] sel;
wire [3:0] result;
wire carry , borrow ;
alu_4bit uut (.A(A),.B(B),.sel(sel),.result(result),.carry(carry),.borrow(borrow));
initial
begin
A = 4'b0001;
B = 4'b0100;
sel = 4'b0000;
#10;
sel = 4'b0001;
#10;
sel = 4'b0010;
#10;
sel = 4'b0011;
#10;
sel = 4'b0100;
#10;
sel = 4'b0101;
#10;
sel = 4'b0110;
#10;
sel = 4'b0111;
#10;
A = 4'b1011;
B = 4'b1011;
sel = 4'b1000;
#10;
A = 4'b1111;
B = 4'b1011;
sel = 4'b1001;
#10;
A = 4'b1011;
B = 4'b1111;
sel = 4'b1010;
#10;
A = 4'b1011;
sel = 4'b1011;
#10;
A = 4'b1111;
sel = 4'b1011;
#10;
A = 4'b0000;
sel = 4'b1100;
#10;
A = 4'b1001;
B = 4'b1000;
sel = 4'b1101;
#10;
A = 4'b1111;
B = 4'b1011;
sel = 4'b1110;
#10;
A = 4'b0010;
B = 4'b0100;
sel = 4'b1110;
#10;
A = 4'b1011;
B = 4'b1111;
sel = 4'b1111;
end
initial begin
    $monitor("t=%0t A=%b B=%b sel=%b result=%b carry=%b borrow=%b",$time,A,B,sel,result,carry,borrow);
end
initial begin
#200;
$finish;
end
  endmodule
