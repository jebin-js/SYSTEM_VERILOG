/*11. Declare a 5 by 31 multi-dimensional unpacked array, my_array1. Each element of the unpacked array holds a 4-state value.

a. Which of the following assignments are legal and not out-of-bounds?

i. my_array1[4][30] = 1'b1;
ii. my_array1[29][4] = 1'b1;
iii. my_array1[4] = 31'b1;

b. Draw my_array1 after the legal assignments are
complete.*/


module unpacked_array_tb;
  
  logic my_array1 [5] [31];
  
  integer i, j;
  
  initial begin
    
    foreach(my_array1[i][j])
      
      my_array1[i][j] = 1'b0;
    
      my_array1[4][30] = 1'b1;
    
      my_array1[29][4] = 1'b1;
    
      my_array1[4] = 31'b1;
    
    for (i = 0; i < 5; i++) begin
    $write("Row %0d : ", i);

    for (j = 0; j < 31; j++)
        $write("%0b ", my_array1[i][j]);
      
    end
    
  end



  //so the my_array1 [4][30] = 1'b1 is legal and remaining are illegal
  
endmodule
