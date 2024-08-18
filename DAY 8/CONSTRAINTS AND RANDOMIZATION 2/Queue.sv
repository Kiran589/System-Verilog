     class class_1;
     rand bit [3:0]que[$];
     constraint que_const{que.size()==5;}
     endclass
     module mod;
     class_1 pack;
     initial begin
     pack=new;
     for (int i = 0;i<=pack.que.size();i++)begin
     void'(pack.randomize());
     $display (" Iteration = %0d The value of array =%0p",i,pack.que); 
     end
    end
    endmodule
