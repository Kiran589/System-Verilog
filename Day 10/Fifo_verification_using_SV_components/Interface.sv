interface fifo_if ;
  logic clock;
  logic rst;
  logic [7:0] din;
  logic [7:0] dout;
  logic empty, full;
  logic rd, wr;
endinterface;
