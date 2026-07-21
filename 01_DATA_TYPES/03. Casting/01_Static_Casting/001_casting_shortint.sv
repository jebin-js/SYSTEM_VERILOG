module casting;
  
  int a;
  shortint b_short;
  longint c_long;
  
  initial begin
    
    b_short = 'b11111;
    $display("=========================\n  Short int value   \n======================");
    $display ("\nShort  Int value before casting: %0d(%b)", b_short, b_short);
    
    a = int'(b_short);  //conversion of short int to int
    
    $display ("\nShort Int value after casting to int: %0d(%b)\n", a, a);
    
    c_long = longint'(b_short);
    
    $display ("\nlong Int value after casting from shortint: %0d(%b)\n", c_long, c_long);
    
  end
  
endmodule
    
    
