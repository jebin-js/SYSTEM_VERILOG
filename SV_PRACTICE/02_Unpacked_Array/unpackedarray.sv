//Q5. Declare an unpacked array of 5 integers. Initialise it with values of your //choice, then print every element using a loop.



  module test;
    
    int a [0:4];
    
    initial begin
      
      a = '{10, 20, 30, 40, 50};
      
      foreach(a[i]) begin
      
        $display("Unpacked array integers %0d = %0d",i, a[i]);
      
    end
      
    end
    
  endmodule


	Top level design units:
		test
Loading snapshot worklib.test:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Unpacked array integers 0 = 10
Unpacked array integers 1 = 20
Unpacked array integers 2 = 30
Unpacked array integers 3 = 40
Unpacked array integers 4 = 50
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Oct 19, 2026 at 01:22:50 EDT  (total: 00:00:01)
    
 
