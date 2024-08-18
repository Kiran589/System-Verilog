       class static_array;  
       randc byte  a[5];  
       endclass  
       module stat_array;  
       static_array stat_arr;  
       initial begin  
       stat_arr = new();  
       $display ("Static array - Size is already declared. So, we can only randomize ");  
       $display ("               the elements of it . ");  
       $display ("Before randomize the elements of array 'a'");  
       $display ("Assign by the default value of array data type.");  
       $display (" %0p", stat_arr.a);  
       void '(stat_arr.randomize ());  
       $display ("After randomize the elements of array 'a'");  
       $display ("Output =  %0p ",stat_arr.a);   
       end  
