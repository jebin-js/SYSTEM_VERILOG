//Write a SystemVerilog function that accepts an integer and returns 1 if the number is even, otherwise 0.


module test;
  
  function int check_even(input int n);
    
    if(n % 2== 0)
      
      return 1;
    else
      return 0;
    
  endfunction
  
  initial begin
    
    $display("4:%0d", check_even(4));
    $display("5:%0d", check_even(5));
    
  end
  
endmodule


//output
Loading snapshot worklib.test:sv .................... Done
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
4:1
5:0
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
TOOL:	xrun	25.03-s001: Exiting on Oct 19, 2026 at 01:09:33 EDT  (total: 00:00:01)

  
