  a = $random();  
      b = $urandom();  
      c= $urandom_range(4,2); 
      d = $random(23);   
      e = $urandom(4); 
      $display ("a=$random()      // Return 32 bit signed random variable");  
      $display("Random Value of a  =  %0d",a);    
      $display("b = $urandom()   // Return 32 bit unsigned random value .");    
      $display("Random Value of b = %0d",b);  
      $display ("c = $random_range(4,2)   // Return the unsigned random number") ;    
      $display("                          by giving the range to the variable");  
      $display("Random value of c = %0d",c);  
      $display(" $random(seed);     // assign some seed value, it will display 32 bit ");  
      $display ("                         signed random value for the given seed value ");  
      $display ("d = $random(23);  // Seed value =23");  
      $display ("Random value of d = %0d",d );  
      $display ("$urandom(seed);  // assign the seed value , it will display 32 bit ");  
      $display ("                    unsigned random value for the given seed value ");     
      $display ("e = $urandom(4);  // Seed value = 4;");  
      $display ("Random value of e = %0d", e);  
      end  
