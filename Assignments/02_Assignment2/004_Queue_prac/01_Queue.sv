/*4. write a code for queue array with 4 elements ... insert 1in the 1st index.. delete element in 3rd index... insert 9 as the last element... shuffle, reverse the elements*/

module queue;
  
  int q[$];
  
  initial begin
    
    q = '{2, 4, 6, 8};
    
    $display("========================QUEUE ARRAY=====================\n");
    
    $display("Queue = %0p\n", q);
    
    $display("========================QUEUE INSERT=====================\n");
    
    q.insert(1, 1);
    $display("Inserted Queue = %0p\n", q);
   
    $display("========================QUEUE DELETE=====================\n");
    
    q.delete(3);
    $display("Deleted Queue = %0p\n", q);
    
    $display("========================QUEUE INSERT=====================\n");
    
    q.insert(3, 9);
    $display("Inserted Queue = %0p\n", q);
    
    $display("========================QUEUE SHUFFLE====================\n");
    
    q.shuffle();
    $display("Shuffled Queue = %0p\n", q);
    
    $display("========================QUEUE REVERSE====================/n");
    
    q.reverse();
    $display("Reversed Queue = %0p\n", q);
    
    
    $display("\n\n\n");
    
  end
  
endmodule
    
