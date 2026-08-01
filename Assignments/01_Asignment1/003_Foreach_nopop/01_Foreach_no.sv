//3. Why can’t we use a foreach loop for popping all the elements in a queue?

/*We cannot use a foreach loop to pop all elements from a queue because foreach iterates using the queue's existing indices. When pop_front() or pop_back() removes an element, the queue size changes and the remaining elements are re-indexed. As a result, the foreach iterator may skip elements or terminate early, leading to incorrect behavior.

Although some simulators (such as Xcelium) allow foreach with pop_front() to work, it is not recommended because foreach is meant for traversal, not for modifying the queue. Changing the queue size during iteration can lead to simulator-dependent behavior and makes the code less reliable. The preferred approach is while (q.size() > 0) when removing all elements from a queue.*/

module queue_foreach;
  
  int q[$] = '{10, 15, 20, 30, 40, 50};
  
  initial begin
    
    $display("Orginal queue: %p", q);
    
    $display("=============After poping Foreach===================\n");
    
    foreach(q[i]) begin
      
      $display("Iteration index (i): %0d", i);
      $display("Popped Element = %0d", q.pop_front());
      $display("Queue After Pop = %p", q);
      
    end   
      
    $display("Final queue: %p", q);
    
  end
  
endmodule
    
