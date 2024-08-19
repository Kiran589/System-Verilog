           class class1;
              rand bit [2:0] value;
              constraint cons {value==1;}
           endclass

           class class2;
              rand bit [2:0] value; 
              static constraint cons {value==1;}
           endclass
           
           initial
           begin
               object_1.cons.constraint_mode(0);
                for(int i=1;i<=3;i++)
                begin
                  void'(object_1.randomize());
                  void'(object_2.randomize());
                   #1 $display("\t[%0t] @ iteration: %0d -----> value in object_1: %0d  value in object_2: %0d",$time,i,object_1.value,object_2.value);
                end
           
               object_3.cons.constraint_mode(0);
                for(int i=1;i<=3;i++)
                begin
                  void'(object_3.randomize());
                  void'(object_4.randomize());
                   #1 $display("\t[%0t] @ iteration: %0d -----> value in object_3: %0d  value in object_4: %0d",$time,i,object_3.value,object_4.value);
                end
           end
