/*12. Write the SystemVerilog code to:

a) Declare a 2-state array, my_array, that holds four 12-bit values
b) initialize my_array so that:

i. my_array[0] = 12’h012
ii. my_array[1] = 12’h345,
iii. my_array[2] = 12’h678,
iv. my_array[3] = 12’h9AB;

c) Traverse my_array and print out bits [5:4] of each 12-bit element
i. Using a for loop
ii. Using a foreach loop*/

module test;
  
  int my_array[4];
  
  initial begin
    
    my_array[0] = 12'h012;
    my_array[1] = 12'h345;
    my_array[2] = 12'h678;
    my_array[3] = 12'h9AB;
    
    
    $display("================================Initial Values=============================\n");
    for(int i = 0; i < 4; i++) begin
      $display("my_array[%0d] = %0h(%b)", i , my_array[i], my_array[i]);
    end
    
   
    $display("\n============================Transversing Values =========================\n");
    
    $display("Using for loop:\n");
    
    for(int i = 0; i < 4; i++) begin
      $display("my_array[%0d] bits[5:4] = %b", i, my_array[i][5:4]);
      
    end
      

    $display("\nUsing foreach loop:\n");
    
    foreach(my_array[i]) begin
      $display("mu_array[%0d] bits[5:4] = %b", i, my_array[i][5:4]);
    
    end
    
    
  end
  
endmodule
    
    
    

