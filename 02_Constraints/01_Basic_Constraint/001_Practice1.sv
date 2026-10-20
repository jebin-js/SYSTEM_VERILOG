//01 generate 10 random values using constraint

class test_a;
  
  randc byte a;
  randc byte b;
  
  constraint cons1 { a > 10; a < 20;}
  
  extern constraint cons_1;
  
endclass

constraint test_a:: cons_1{b < 10; b > 1;}

module test;
  
  test_a todo;
  
  initial begin
    
    todo = new();
    for(int i = 0;  i < 10; i ++)
        begin
          
          void'(todo.randomize());
      
          $display("Iteration = %0d || Value of a = %0d || Value of b = %0d", i, todo.a, todo.b);
    end
        
        end
        
        endmodule

//output


[2026-10-20 14:30:06 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	25.03-s001: Started on Oct 20, 2026 at 10:30:06 EDT
xrun: 25.03-s001: (c) Copyright 1995-2025 Cadence Design Systems, Inc.
	Top level design units:
		$unit_0x4ccdf83b
		test
Loading snapshot worklib.test:sv .................... Done
SVSEED default: 1
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Iteration = 0 || Value of a = 15 || Value of b = 7
Iteration = 1 || Value of a = 19 || Value of b = 9
Iteration = 2 || Value of a = 11 || Value of b = 5
Iteration = 3 || Value of a = 16 || Value of b = 3
Iteration = 4 || Value of a = 13 || Value of b = 2
Iteration = 5 || Value of a = 12 || Value of b = 4
Iteration = 6 || Value of a = 17 || Value of b = 6
Iteration = 7 || Value of a = 18 || Value of b = 8
Iteration = 8 || Value of a = 14 || Value of b = 7
Iteration = 9 || Value of a = 14 || Value of b = 9
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
