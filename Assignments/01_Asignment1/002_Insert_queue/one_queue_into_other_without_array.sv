//Assignment 1

/*02. Write a snippet in SV to insert one queue into another queue. (Do it with & without using array methods)*/

module inserting_queue_without_array;
  
  int queue_a[$];
  int queue_b[$];
  
  initial begin
    
    queue_a = '{2, 3, 4, 5, 6, 7, 8};
    queue_b = '{5, 10, 15, 20, 25, 30};
    
    $display("====================== Without Inserting ==================");
    
    $display("Before inserting queue_a: %p", queue_a);
    $display("Before inserting queue_b: %p", queue_b);
    
    $display("====================== After Inserting ====================");
    
    queue_a = {queue_a, queue_b};
    
    $display("After inserting: %p", queue_a);
    
  end
  
endmodule
