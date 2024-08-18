               //class declaration
               class value;
               //random variable declared using rand keyword 
               rand bit [3:0] s_array1[4];
               rand bit [3:0] s_array2[5];
               //constraint block
               //standard way to represent fixed array using  
               //foreach conditional statement  
               constraint cons {foreach(s_array1[i])
                                 s_array1[i]==i;
                                foreach (s_array2[i])
                                  s_array2[i] == i;}
               endclass
               // module name is top
               module top;
               initial begin
               //here,we need to declare handle
               //handle name is val
               value val;
              //memory allocation to the handle
              val = new();
              $display("-------------------------------");
              void'(val.randomize());
              $display("\t s_array1=%0p" , val.s_array1);
              $display("\t s_array2=%0p" , val.s_array2);
              $display("-------------------------------");
              end
              endmdule
