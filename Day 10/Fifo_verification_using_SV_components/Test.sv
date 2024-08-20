`include "environment.sv"

program test(fifo_if fif);
  environment env;
  
initial begin

    env = new(fif);
    env.run();

  end

endprogram
