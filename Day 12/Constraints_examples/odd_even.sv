class even_odd;
  rand bit[3:0] a[]; 
  int i;
  constraint s1 { a.size() inside {[15:20]}; }

  constraint s2 { foreach(a[i]) { 
    if (i % 2 == 0) 
      a[i] % 2 == 1; 
    else
      a[i] % 2 == 0; 
  }}

  function void display();
    $display("Size = %0d", a.size);
    foreach (a[i]) begin
      if (i % 2 == 0)
        $write("Index = %d [Even location] ", i);
      else
        $write("Index = %d [Odd location] ", i);
      
      if (a[i] % 2 == 1)
        $display("Value = %0d [Odd number]", a[i]);
      else 
        $display("Value = %0d [Even number]", a[i]);
    end
  endfunction
endclass

module abc;
  even_odd eo;

  initial begin
    eo = new();
    repeat(20) begin
      eo.randomize();
      eo.display(); 
    end
  end
endmodule
