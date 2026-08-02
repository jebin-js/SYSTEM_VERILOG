/*9. Write a test bench to test predefined array locator methods by using the following statements

a. declare queues q, tq, dynamic array d, fixed array f
b. initialize q to (1,3,5,7), d to (9,1,8,3,4,4), f to (1,6,2,6,8,6)
c. display sum, product of elements of array q
d. display min, max values stored in array q
e. display the unique elements from array f
f. find elements in array d with condition item > 3
g. find indexes of those elements in array d which have condition item > 3
h. find indexes of those elements in array d which have condition item > 99
i. find the first index in array d which matches with condition item==8
j. find the last element in array d which matches with condition item==4
k. find the last index in array d which matches with condition item==4
l. find the sum of elements in array d with condition item > 7
m. find the sum of elements in array d with condition ((item > 7) * item)
n. find the sum of elements in array d with condition item < 8
o. find the sum of elements in array d with condition ((item < 8)? item:0)*/

module array_locator_methods_tb;
  
  int q[$];
  int tq[$];
  int d[];
  int f[6];
  int s, p;
  int min[$], max[$], uniq[$];
  int out[$];
  int total;
  
  
  initial begin
    
    q = '{1, 3, 5, 7};
    d = new[6];
    d = '{9,1,8,3,4,4};
    f = '{1,6,2,6,8,6};
    
    
    $display("==============================SUM OF Q=======================================");
    s = q.sum();
    $display("Sum of q = %0d", s);
    
    $display("================================PRODUCT OF Q=================================");
    p = q.product();
    $display("Product of q = %0d", p);
    
    $display("                                ");
    
    $display("===================================MIN OF Q==================================");
    min = q.min();
    $display("Minimum value of q = %0p", min);
    
    $display("===================================MAX OF Q==================================");
    max = q.max();
    $display("Maximum value of q = %0p", max);
    
    
    $display("                                ");
    
    $display("==================================UNIQUE OF F================================");
    uniq = f.unique();
    $display("Unique value of f = %0p", uniq);
    
    
    $display("                                ");
    
    $display("===============================(ITEM > 3) OF D===============================");
    out = d.find() with (item > 3);
    foreach(out[i])
      $display("Item > 3 = %0d", out[i]);
    
    
    $display("                                ");
    
    $display("============================INDEX OF (ITEM > 3) OF D=========================");
    out = d.find_index() with (item > 3);
    foreach(out[i])
      $display("Index of (Item > 3) = %0d", out[i]);
    
    
    $display("                                ");
    
    $display("===========================INDEX OF (ITEM > 99) OF D=========================");
    out = d.find_index() with (item > 99);
    foreach(out[i])
      $display("Index of (Item > 99) = %0d", out[i]);
    
    
    $display("                                ");
    
    $display("=======================FIRST INDEX OF D WITH (ITEM == 8) ====================");
    out = d.find_first_index() with (item == 8);
    foreach(out[i])
      $display("First index of (item == 8) = %0d", out[i]);
    
    
    $display("                                ");
    
    $display("=====================LAST ELEMENT OF D WITH (ITEM == 4) =====================");
    out = d.find_last() with (item == 4);
    foreach(out[i])
      $display("Last element of (item == 4) = %0d", out[i]);
    
    
    $display("                                ");
    
    $display("========================LAST INDEX OF D WITH (ITEM == 4) ====================");
    out = d.find_last_index() with (item == 4);
    foreach(out[i])
      $display("Last index of (item == 4) = %0d", out[i]);
    
    
    
   $display("                                ");
    $display("========================SUM OF ELEMENTS WITH (ITEM > 7) =====================");
    
    total = d.sum() with (item > 7 ? item : 0);
    $display("Sum of elements = %0d", total);
    
    
    
   $display("                                ");
    $display("========================SUM OF ELEMENTS WITH (ITEM > 7) =====================");
    
    total = d.sum() with ((item > 7) * item);
    $display("Sum of elements = %0d", total);
    
    $display("                                ");
    $display("========================SUM OF ELEMENTS WITH (ITEM < 8) =====================");
    
    total = d.sum() with (item < 8);
    $display("Sum of elements = %0d", total);
    
    $display("                                ");
    $display("===================SUM OF ELEMENTS WITH ((item < 8)? item:0) ================");
    
    total = d.sum() with (((item < 8)? item:0));
    $display("Sum of elements = %0d", total);
    
    
  end
  
  
endmodule
