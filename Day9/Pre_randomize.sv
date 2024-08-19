          class generator;
               rand bit [2:0] value;
               constraint exp { value>5;}
  
               function void pre_randomize();
                  if(i%2==0)
                  begin
                     rand_mode(0);
                     $display("\tstopping randomization");
                  end
                  else
                     rand_mode(1);
                   i++;
               endfunction
         endclass

          module pre_randomization();
 
               generator gen = new();
 
              initial
              begin
 
                for(int i=1;i<=4;i++)
               begin
                 $display("\t[%0t]Calling Randomize....",$time);
                 void'(gen.randomize());
                 #1  $display("\t[%0t] @ iteration: %0d -----> value: %0d ",$time,i,gen.value);
               end
             end
           endmodule
