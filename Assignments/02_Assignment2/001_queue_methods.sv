/*01. Code for queue build-in methods size, insert (n/2 position, n position, n-1 p delete, pop_front,pop_back, push_front and push_back.*/


module queue_methods;
  
  int q[$];
  int n;
  int poped;
  
  initial begin
    
    q = '{10, 20, 30, 40, 50, 60, 70};
    
    $display("================Initial queue====================");
    $display("Initial queue = %p", q);
    
    n = q.size();
    
    $display("\n============== Size Of Queue===================");
    $display("Size of queue = %0d", n);
    
    q.insert(n/2, 25);
    $display("\n============== Insert at n/2 Position==========");
    $display("Queue = %0p", q);
    
    n = q.size();
    q.insert(n, 55);
    $display("\n============== Insert at n Position============");
    $display("Queue = %0p", q);
    
    n = q.size();
    q.delete(n-1);
    $display("\n============== Delete at n-1 Position==========");
    $display("Queue = %0p", q);
    
    poped = q.pop_front();
    $display("\n================== Pop Front ==================");
    $display("Queue = %0p", q);
    
    poped = q.pop_back();
    $display("\n================== Pop back ==================");
    $display("Queue = %0p", q);
    
    n = q.size();
    $display("\n============== Size Of Queue===================");
    $display("Size of queue = %0d", n);
    
    q.push_front(16);
    $display("\n================== Push front ================");
    $display("Queue = %0p", q);

    q.push_back(25);
    $display("\n================== Push back ==================");
    $display("Queue = %0p", q);
    
    n = q.size();
    $display("\n============== Size Of Queue===================");
    $display("Size of queue = %0d", n);
    
  end
  
endmodule
