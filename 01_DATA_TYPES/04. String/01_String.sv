module string_Eg;
  
  string str1;
  string str2;
  string str3;
  string str4;
  
  initial begin
    
    str1 = "HELLO I AM JEBIN";
    str2 = "hello i am jebin";
    str3 = "Wowww\n";
    
    //Finding Length
    $display("=========================================");
    $display("Length of the string 1: %0d", str1.len());
    $display("Length of the string 2: %0d", str2.len());
    $display("Length of the string 3: %0d\n", str3.len());
    $display("=========================================\n");
    
    //get from other string
    $display("=========================================");
    $display("get from string 1: %s", str1.getc(1));
    $display("get from string 2: %s", str2.getc(11));
    $display("get from string 3: %s\n", str3.getc(5));
    $display("=========================================\n");
    
    //put a character at a string
    
    $display("=========================================\n");
    str1.putc(0, "J");
    $display("put to string 1: %s", str1);
    
    str2.putc(4, "p");
    $display("put to string 2: %s", str2);
    
    str3.putc(0, "M");
    $display("put to string 3: %s\n", str3);
    $display("=========================================\n");
    
       
    //change case
    
    $display("=========================================");
    $display("lower cased string 1 : %s", str1.tolower());
    $display("upper cased string 2 : %s\n",str2.toupper());
    $display("=========================================\n");
    
    //concatenation
    
    $display("=========================================");
    str1 = {str1, " HOPE EVERYONE ARE GOOD"};
    str2 = {str2, " hope everyone are fine"};
             
    $display("Concatenated string: %s\n", str1);
    $display("Concatenated string: %s\n", str2);
    $display("=========================================\n");
             
    
    //substring
             
    $display("=========================================");
    str4 = str1.substr(18,20);
    $display("sub string of string 1 : %s\n",str4);
    $display("=========================================\n");
             
    //replication
             
    $display("=========================================");
             str3 = {5{str3}};
             $display("Replicated tring 3: %s\n", str3);
    $display("=========================================\n");
             
             end
             
             endmodule
           
