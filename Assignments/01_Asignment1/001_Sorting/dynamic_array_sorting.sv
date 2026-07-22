//Assignment 1

//1. Sort the contents of a dynamic array which contains 10 elements in it.

module dynamic_array_sort;
  
  int arr[ ];
  
  initial begin
    
    arr = new[10];
    arr = '{30, 15, 20 , 25, 13, 26, 99, 87, 28, 98};
    
    $display("================= Before sorting ========================\n");
    $display("Before sorting: %p\n", arr);
    
    arr.sort();
    
    $display("================= After sorting (Ascending) ======================\n");
    $display("After sorting: %p\n", arr);
    
    arr.rsort();
    $display("================= After Rsorting (Descending) ==================\n");
    $display("After Rsorting: %p\n", arr);
    
    arr.reverse();
    $display("================= After Reverse  ============================\n");
    $display("After Reverse: %p\n", arr);
    
    arr.shuffle();
    $display("================= After Shuffle  ============================\n");
    $display("After Shuffle: %p\n", arr);
    
    
  end
    
endmodule 
