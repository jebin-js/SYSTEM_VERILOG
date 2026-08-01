/*6. Write a test bench to test the dynamic array data type and its predefined methods by using the following statements

a. declare two dynamic arrays d1, d of type int
b. initialize d array elements with (9,1,8,3,4,4)
c. allocate six elements in array d1
d. initialize array d1 with index as its value
e. display d1 and its size
f. delete array d1
g. reverse, sort, reverse sort, and shuffle the array*/


//solution

module dynamic_array;
  
  int d1[];
  int d[];
  
initial begin
  
  d1 = new[6];
  d = new[6];
  
  d = '{9, 1, 8, 3, 4, 4};
  
// initialing array d1 with index as its value
  foreach (d1[i]) begin
    d1[i] = i;
end 
    
    $display("===============Initial array=============");
    $display("Array d = %p", d);
    $display("Array d1 = %p", d1);
      
    $display("===============size of array=============");
    $display("Array d1 = %p", d1);
    $display("Array d1 = %p", d1.size());
    
    $display("===============Delete array D1=============");
    
    d1.delete();
    $display("Array d1 = %p", d1);
    
    $display("===============Reverse array d=============");
    
    d.reverse();
    $display("Array d = %p", d);
    
  $display("===============sort array d=============");
    
    d.sort();
    $display("Array d = %p", d);
    
    $display("===============rsort array d=============");
    
    d.rsort();
    $display("Array d = %p", d);
    
    $display("===============Shuffle array d=============");
    
    d.shuffle();
    $display("Array d = %p", d);
    
  end
  
  
endmodule
    
