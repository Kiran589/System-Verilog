              // class declaration
              class PQR;
              // random variable declared using the rand keyword
              rand bit [3:0] var2;
              //constraint block
              //here we use, not symbol before the inside keyword
              constraint C1 {!(var2 inside {[3:9]});}
              endclass
              module top;
              initial begin
              int i;
              //Here, we need to create a handle
              //handle name is pkt
              PQR pqr;
             //memory allocation to the handle
             pqr=new();
             $display("-----Output for invert inside constraint-----");
             $display("---------------------------------------------");
             for(int i =1; i<7;i++)
             begin
             // The .randomize() function is used to randomize properties of an object of a class
             void'(pqr.randomize());
             $display("[%0t] @ iteration: %0d -----> var2=%0d",$time,i,pqr.var2);
             end
             $display("---------------------------------------------");
             end
             endmodule
