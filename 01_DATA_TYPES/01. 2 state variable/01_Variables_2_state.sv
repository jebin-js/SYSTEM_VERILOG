module two_state_variable;
  
  bit      	a;		// >=1 bit unsigned
  byte      b;		// 8 bit signed
  shortint	c;		// 16 bit signed
  int 		d;		// 32 bit signed
  longint  	e;		// 64 bit signed 
  
  initial begin 
    
           $display("SIZE of the bit data type signal      = %0d ",$bits(a));
           $display("SIZE of the byte data type signal     = %0d ",$bits(b));
           $display("SIZE of the shortint data type signal = %0d ",$bits(d));
           $display("SIZE of the int data type signal      = %0d ",$bits(c));
           $display("SIZE of the longint type signal       = %0d ",$bits(e));
    
    
    $display("\nDefault value of the bit = %b", a);
    $display("\nDefault value of the byte = %0d(%b)", b, b);
    $display("\nDefault value of the shortint = (%0d)%b", c, c);
    $display("\nDefault value of the int = (%0d)%b", d, d);
    $display("\nDefault value of the longint = (%0d)%b", e, e);
    
    #10
    
    a = 1'b1;
    b = -121;
    c = 12234;
    d = -11224533;
    e = 12345678901;
    
    $display("\nAfter initialize value of bit 	 = %b", a);
    $display("After initialize value of byte 	   = %0d(%b)", b, b);
    $display("After initialize value of int 	   = %0d(%b)", c, c);
    $display("After initialize value of shortint = %0d(%b)", d, d);
    $display("After initialize value of longint  = %0d(%b)", e, e);
    
  end
  
endmodule
    
