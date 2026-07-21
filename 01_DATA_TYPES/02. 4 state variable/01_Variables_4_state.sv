module four_state_variables;
  
  logic [3:0] a;
  reg [3:0] b;
  logic [7:0] c;
  integer d;
  real e;
  time f;
  
  initial begin
    
    $display("==========================\n  SIZE OF SIGNALS    \n==============================");
    $display("SIZE of the logic data type signal     = %0d",$bits(a));
    $display("SIZE of the reg data type signal    = %0d",$bits(b));
    $display("SIZE of the logic data type signal   = %0d",$bits(c));
    $display("SIZE of the integer data type signal = %0d",$bits(d));
    $display("SIZE of the real data type signal = %0d", 64);
    $display("SIZE of the time data type signal    = %0t",$bits(f));
    
    $display("============================ Default Values ==========================");
    $display("Default value of logic = %b",a, a);
    $display("Defaule value of reg = (%0d) %b",b,b);
    $display("Default value of logic = (%0d) %b",c,c);
    $display("Default value of integer = (%0d)%b", d, d);
    $display("Default value of real = %0f", e);
    $display("Default value of time = (%0d)%0t", f, f);
    

    #10;
    a = 4'b1011;
    b = 4'b1111;
    c = 8'b0;
    d = 1234;
    e = 3.14;
    f = $time;
    
    $display("\n======================= After Initialization ====================");
    $display("Initialized value of logic = %b",a);
    $display("Initialized value of reg = %b",b);  
    $display("Initialized value of logic = %b",c);
    $display("Initialized value of integer = %0d(%b)",d,d);
    $display("Initialized value of real = %f(%b)",e,e);
    $display("Initialized value of time = %0t",f);
    
  end
endmodule
