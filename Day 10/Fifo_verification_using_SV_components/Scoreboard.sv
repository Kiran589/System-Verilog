class scoreboard;
  mailbox  mbx;  
  transaction tr;         
  event next;
  bit [7:0] din[$];       
  bit [7:0] temp;        
  int err = 0;            
  function new(mailbox mbx);
    this.mbx = mbx;     
   endfunction

  task run();
    tr = new();
    forever begin
      mbx.get(tr);
      $display("[SCO] : Wr:%0d rd:%0d din:%0d dout:%0d full:%0d empty:%0d", tr.wr, tr.rd, tr.din, tr.dout, tr.full, tr.empty);
   
      if (tr.wr == 1'b1) begin
        if (tr.full == 1'b0) begin
          din.push_front(tr.din);
          $display("[SCO] : DATA STORED IN QUEUE :%0d", tr.din);
        end
        
        else begin

          $display("[SCO] : FIFO is full");
        
        end 
        

      end
   if (tr.rd == 1'b1) begin

        if (tr.empty == 1'b0) begin  
          temp = din.pop_back();      
          if (tr.dout == temp)
            $display("[SCO] : DATA MATCH");
          else begin
            $error("[SCO] : DATA MISMATCH");
            err++;
          end
        end
     
        else begin
          $display("[SCO] : FIFO IS EMPTY");
        end
    $display("--------------------------------------"); 
      end
 -> next;
    end
  endtask
endclass
