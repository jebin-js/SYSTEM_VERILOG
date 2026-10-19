// Write code to find the largest of three integers using if, else if, and else.

module test;
  
  int a[0:2];
  int largest_number;
  
  initial begin
    
    a = '{20, 18, 14};
    
    largest_number = a[0];
    
    foreach(a[i]) begin
      
      if(a[i] > largest_number)
        
        largest_number = a[i];
      
    end
   
    $display("Largest number is = %0d", largest_number);
        
    
  end
  
endmodule



run: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
	Top level design units:
		test
Loading snapshot worklib.test:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Largest number is = 20
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Oct 19, 2026 at 01:49:38 EDT  (total: 00:00:01)
        
        
        
    
