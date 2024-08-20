class driver;

  virtual fifo_if fif;  
 mailbox  mbx;  
  transaction tr;       
  
  function new( virtual fifo_if fif, mailbox mbx);
     this.fif = fif;
    this.mbx = mbx;
   endfunction
  task reset();

    fif.rst <= 1'b1;
    fif.rd <= 1'b0;
    fif.wr <= 1'b0;
    fif.din <= 0;

    repeat (7) @(posedge fif.clock);

    fif.rst <= 1'b0;

  endtask

  task write();

    @(posedge fif.clock);

    fif.rst <= 1'b0;
    fif.rd <= 1'b0;
    fif.wr <= 1'b1;
    fif.din <= 5;
    @(posedge fif.clock);
    fif.wr <= 1'b0;
    $display("[DRV] : DATA WRITE  data : %0d", fif.din);  

  endtask

  task read();  

    @(posedge fif.clock);

    fif.rst <= 1'b0;
    fif.rd <= 1'b1;
    fif.wr <= 1'b0;

    @(posedge fif.clock);

    fif.rd <= 1'b0;      
    $display("[DRV] : DATA READ");  

  endtask

  task run();

    forever begin

      mbx.get(tr);  

      if (tr.oper == 1'b1)
        write();
      else
        read();
    end

  endtask
endclass
