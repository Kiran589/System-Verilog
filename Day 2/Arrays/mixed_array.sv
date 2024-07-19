module mixed_arrays;
  logic [2:0][3:0] mixed_array [2:0][3:0]; // Mixed multi-dimensional array
  
  initial begin
    $display("The assigning of mixed multi-dimensional arrays as follows:");
    
    foreach(mixed_array[i]) begin
      foreach(mixed_array[i][j]) begin
        foreach(mixed_array[i][j][k]) begin
          foreach(mixed_array[i][j][k][l]) begin
            mixed_array[i][j][k][l] = $urandom_range(0, 1); // Assign random bits (0 or 1)
            $display("mixed_array[%0d][%0d][%0d][%0d] = %0b", i, j, k, l, mixed_array[i][j][k][l]);
          end
        end
      end
    end
  end
endmodule
