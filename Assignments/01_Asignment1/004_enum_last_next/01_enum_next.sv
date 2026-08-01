/*4. What happens when an enum variable is assigned with the last valid
value and the next method is used to do the next assignment?

When an enum variable holds the last valid enumerated value and the next() method is called, it wraps around to the first enumerated value. It does not stop or generate an error.*/

typedef enum {jebin, arun, sambat, arut} silic_crafts;

module silic;
  
  silic_crafts stud;
  
  initial begin
    
    stud = arut;
    
    $display("===============current student================");
    
    $display("Current = %s", stud.name());
    
    $display("===============next student===================");
    
    stud = stud.next();
    
    $display("Next = %s", stud.name());
    
  end
  
  
endmodule
