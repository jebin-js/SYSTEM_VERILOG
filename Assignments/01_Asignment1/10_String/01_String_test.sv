/*10. Write a test bench to test string data type and its predefined methods by using the following statements

a. declare a string data type and assign it to“SystemVerilog”
b. use the getc() method to display the ASCII value of the first character of this string
c. use toupper() method to display the string in capital letter
d. concatenate the string with string “3.1a” and display
e. replace the last character in the string with character ‘b’ using len() method and display
f. use substr() method to display substring from 2nd to 5th character*/

module string_test;
  
  string str;
  string sub;
  
  initial begin
    
    str = "SystemVerilog";
    
    $display("                            ");
    $display("=============================Get the first character=========================");
    
    $display("Get the first ASCII value: %0d", str.getc(0));
    
    
    $display("                            ");
    $display("=============================UPPER CASE OF STR===============================");
    
    $display("Upper case: %s\n", str.toupper());
    
    
    
    $display("                            ");
    $display("=============================CONCATENATION===================================");
    
    str = {str , "3.1a"};
    $display("Concatenated string: %s", str);
    
    $display("                            ");
    $display("=============================REPLACE LAST ===================================");
    
    $display("Length of the str: %0d", str.len());
    
    str [str.len() - 1] = "b";
    $display("Replaced string: %s\n", str);
    
    
    $display("                            ");
    $display("=============================SUB STRING =====================================");
    
    
    sub = str.substr(1, 4);
    $display("Orginal string:%s", str);
    $display("substring: %s", sub);
    
      $display("                            ");
      $display("                            ");
      $display("                            ");
  end
  
endmodule
