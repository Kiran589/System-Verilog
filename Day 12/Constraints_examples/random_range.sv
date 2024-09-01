//without inside operator generate random values for the range 34-43

class generate_without_in;
  rand int val;
  constraint value{ (val>34) && (val<43); }
endclass


module abc;
  generate_without_in c_h;
  initial begin
    c_h = new();
    
    repeat(23) begin
      c_h.randomize();
      $display("value = %d",c_h.val);
               end
               end
               endmodule
