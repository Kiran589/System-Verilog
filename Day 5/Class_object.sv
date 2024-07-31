class home; 
  bit light;
  int fan ;
  string switch;
  
  task open_electricity();
    switch = "ON";
    $display("switch is %s so electricity is open",switch);
  endtask

endclass

module tb;

  home h1;     

  initial begin:BEGIN_I

    $display("Using new() method we can create an object");
    h1=new();
    if (h1==null)
      $display("object is empty");
    else
      $display("object is not empty");
  end:BEGIN_I
  
endmodule
