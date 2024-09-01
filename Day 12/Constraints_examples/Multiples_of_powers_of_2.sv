class powers_of_2;
  rand bit [15:0] val;
  
  constraint c1 { val!= 0;
                 (val & (val-1)) == 0;}
endclass
 
module abc;
  powers_of_2 ch;
  
  initial begin 
    ch = new();
    
    repeat(10) begin
      ch.randomize();
      $display(" power of 2 = %0d", ch.val);
    end
  end
endmodule
