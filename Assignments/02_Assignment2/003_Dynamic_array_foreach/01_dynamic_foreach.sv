/*3. write a code for dynamic array... give the value of array using foreach.. display the size... shuffle the array elements...*/

module dynamic_array;
  
  int d[];
  
  initial begin
    
    d = new[5];
    d = '{10, 12, 13, 14, 15};
    
    $display("=====================DYNAMIC ARRAY=======================\n");
    
    foreach(d[i])
      $display("d[%0d] = %0d\n", i, d[i]);

    
    
    $display("====================DYNAMIC ARRAY SIZE===================\n");
   
    $display("Size of array = %0d\n", d.size());
    
    
    $display("==================SHUFFLE ARRAY ELEMENTS=================\n");
    
    d.shuffle();
    $display("Shuffle the Elements = %0p\n\n", d);
    
  end
  
endmodule
