/*7. Write a test bench to test queue data type and its predefined methods by using the following statements

a. declare an int j and queue q of type int
b. initialize int j as 1 and queue q as (0, 2, 5)
c. insert int j at index 1 in queue q and display q
d. delete index 1 element from queue q and display q
e. push an element (7) in the front in queue q and display q
f. push an element (9) at the back in queue q and display q
g. pop an element from the back of queue q, display q, element
h. pop an element from front of queue q, display q, element
i. reverse, sort, reverse sort, and shuffle the queue*/

module queue_types;
  
  int j;
  int q[$];
  int data;
  
  initial begin
    
    j = 1;
    q = '{0, 2, 5};
    
    $display("=============Initial value===============");
    $display("Initial value of j = %0d", j);
    $display("Initial value of q = %p", q);
    
    
    $display("=============Insert j at q===============");
    
    q.insert(1, j);
    $display("Value of q = %p", q);
    
    
    $display("=============Delete index[1]===============");
    
    q.delete(1);
    $display("Value of q after deletion = %p", q);
    
    $display("=============Push Element(7) front===============");
    
    q.push_front(7);
    $display("Value of q = %p", q);
    
    $display("=============Push Element(9) back===============");
    
    q.push_back(9);
    $display("Value of q = %p", q);
    
    $display("=============Pop Element() back===============");
    
    data = q.pop_back();
    $display("Value of q = %p", q);
    
    $display("=============Pop Element() Front===============");
    
    data = q.pop_front();
    $display("Value of q = %p", q);
    
    $display("===================Reverse=======================");
    
    q.reverse();
    $display("Value of q = %p", q);
    
    $display("===================sort=======================");
    
    q.sort();
    $display("Value of q = %p", q);
    
    $display("===================rsort=======================");
    
    q.rsort();
    $display("Value of q = %p", q);
    
    $display("===================shuffle=======================");
    
    q.shuffle();
    $display("Value of q = %p", q);
    
  end
  
endmodule
    
  
