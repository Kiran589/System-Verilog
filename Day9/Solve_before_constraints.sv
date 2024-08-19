            class without_solve_before;  
            rand bit value1;  
            rand bit [3:0] value2;  
            constraint val {value1==1 -> value2==1;}  
            endclass  

          class with_solve_before;  
            rand bit value1;  
            rand bit [3:0] value2;  
            constraint valu {value1==1 -> value2==1;  
                            solve value1 before value2;}  
          endclass  

          module solve_before();  
             without_solve_before gen1 = new();  
             with_solve_before gen2 = new();  

            initial  
            begin  
              $write("%c[1;31m \t------Without solve before----------\n",27);  
              for(int i=1;i<=10;i++)  
              begin
                  void'(gen1.randomize());  
                  #1 $display("\t[%0t] @ iteration: %0d -----> value1: %0d \t value2: %0d",$time,i,gen1.value1,gen1.value2);  
              end  
              $write("\n%c[1;34m\t -----with solve before--------\n",27);  
              for(int i=1;i<=10;i++)  
              begin  
                  void'(gen2.randomize());  
                  #1 $display("\t[%0t] @ iteration: %0d -----> value1: %0d \t value2: %0d",$time,i,gen2.value1,gen2.value2);  
              end  
              $write("%c[0m",27);  
            end  

          endmodule : solve_before  
