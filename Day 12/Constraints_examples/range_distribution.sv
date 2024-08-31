// constraint - for range 0-100 range 70% and for 101-255 range 30%
class range;
  rand bit[7:0] a;
  constraint c1 { a dist {[0:100] :=7, [101:255] :=3};}
endclass

module abc;
  range re;
  initial begin
    re = new();
   
    repeat(10) begin
      re.randomize();
      if(re.a < 100)
        $display ( "a = %d (under [0:100])", re.a);
      else
        $display ( "a = %d (under [101:255])", re.a);
    end 
  end
endmodule
