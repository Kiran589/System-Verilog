      class class_1;  
      rand bit [3:0]a[2][4];  
      endclass  
      module mod;  
      class_1 pack;  
      initial begin  
      pack = new;  
      $display ("The value elements of array before randomization = %0p",pack.a);  
      for (int i =0;i<=5;i++)begin  
      void'(pack.randomize());  
      $display ("The value of elements of array after randomization = %0p",pack.a);  
      end
      end   
