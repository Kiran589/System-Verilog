`include "transaction.sv"
class generator;
  transaction tr;        
  mailbox mbx;                      
  event next;               
  event done;  
  
  function new(mailbox mbx);
    this.mbx = mbx;
  endfunction 

  task run(); 
    tr = new();
    repeat (10) begin
      tr.randomize();
      mbx.put(tr);
 @(next);
-> done;     
    end
  endtask

  endclass
