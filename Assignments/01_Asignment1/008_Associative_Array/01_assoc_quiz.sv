/*8. Write a test bench to test the Associative array data type and its predefined methods by using the following statements

a. declare a 64-bit integer type sparse array assoc & an index idx
b. initialize idx to 1
c. fill array assoc by 1-bit left shift of idx value in a loop which runs 64 times so that the array is filled as a sparse array
d. use first, next, last, prev methods to get the values of these elements*/

module assoc_array;
  
  bit [63:0] assoc[int];
  int idx;
  int key;
  
  initial begin
    
    idx = 1;
    
    for(int i = 0; i < 64; i++) begin
      assoc[i] = idx << i;
    end
    
    $display("===================Associative aray================");
    
    foreach(assoc[i])
       
      $display("Index = %0d Value = %b", i, assoc[i]);
    
    if(assoc.first(key))
    $display("\nFirst element");
    $display("Index = %0d Value = %0h", key, assoc[key]);
    
    if(assoc.next(key))
    $display("\nNext Element");
    $display("Index = %0d Value = %0h", key, assoc[key]);
    
    if(assoc.last(key))
    $display("\nLast Element");
    $display("Index = %0d Value = %0h", key, assoc[key]);
    
    if(assoc.prev(key))
    $display("\nPrevious Element");
    $display("Index = %0d Value = %0h", key, assoc[key]);
    
  end
  
endmodule
