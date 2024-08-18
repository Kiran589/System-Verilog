            class myWorld;
            // random variable declared using the rand keyword
            rand bit [3:0] value1;
            //constraint block
            //In this, the weight of 1 is 30, 6 is 70, and 7 is 20
            //while 2 through 5 is 40
    
            constraint m_var { value1 dist { 1:=30, [2:5]:=40, 6:=70, 7:=20};}
            endclass
 
             module top;
             initial begin
             int i;
            //Here, we need to create a handle
            //handle name is world
             myWorld world;
            // memory allocation to the handle
            world = new();
            $display("-----Output for := operator-----");
            $display("The occurrence of '6' is more as '6' has more weight");
            for(int i =0; i<10; i++) begin
            void'( world.randomize());
            $display("[%0t] @ iteration %0d  -----> value1=%0d",$time,i,world.value1);
            end
            end
           endmodule
