class monitor;

  virtual fifo_if fif;    
  mailbox  mbx;  
  transaction tr;          
  function new(virtual fifo_if fif, mailbox  mbx);
    this.fif = fif;
    this.mbx = mbx;     
  endfunction
  
  task run();
    tr = new();
   forever begin
      repeat (2) @(posedge fif.clock);
      tr.wr = fif.wr;
      tr.rd = fif.rd;
      tr.din = fif.din;
      tr.full = fif.full;
      tr.empty = fif.empty; 
      @(posedge fif.clock);
      tr.dout = fif.dout;
      mbx.put(tr);
      $display("[MON] : Wr:%0d rd:%0d din:%0d dout:%0d full:%0d empty:%0d", tr.wr, tr.rd, tr.din, tr.dout, tr.full, tr.empty);
    end
 endtask
endclass
