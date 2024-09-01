class phone_number;
  rand int num[];
  
  constraint ph_num_size {num.size() == 10;}
  constraint ph_num {foreach (num[i]) {(num[i] >= 0) && (num[i] < 10);
                                       if ( i == 0 )
                                         num[i] == 8;
                                       if (i == 1)
                                         num[i] == 5;
                                       if ( i == 2)
                                         num [i] == 2;
                                      }}
    function void display();
                     $write("random mobile number is : \"");
                     foreach(num[i]) begin
                       $write ("%0p", num[i]);
                     end 
                     $write("\"");
                     $write("\n");
                     endfunction
                     endclass
                     
                     module mk;
                       phone_number ph;
                       
                       initial begin
                         ph = new();
                         repeat(100)
                           begin
                             ph.randomize();
                             ph.display();
                           end
                       end
                     endmodule
