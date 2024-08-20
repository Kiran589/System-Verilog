class transaction;
  bit rd,wr;
  bit [7:0] din;
  bit full, empty;
  reg [7:0] dout;
  bit rst;
  bit clk;
  rand bit oper;
  constraint con { oper dist {1:=20, 0:=20};}
endclass
