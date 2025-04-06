module gcd(
  input clk,reset,
  input [7:0] a,b,
  output reg [7:0] gcd,
  output reg done);
  reg [7:0] x, y;
  always@(posedge clk or posedge reset) begin
    if(reset) begin
      x=a;
      y=b;
      gcd=0;
      done=0;
    end else if(x!=0 && y!=0) begin
      if(x>y)
        x=x-y;
      else 
        y=y-x;
    end else if(x==0) begin
      gcd = y;
      done = 1;
    end else begin
      gcd=x;
      done=1;
    end
  end
endmodule
      
