/*2. Create a typdef Instr_t of struct for the instruction and then declare the memory as array of Instr_t.*/

typedef struct {
    bit [7:0] opcode;
    bit [3:0] src;
    bit [3:0] dest;
    bit [15:0] data;
}Instr_t;

module struct_instruction;
  
  Instr_t memory[16];
  
  initial begin
    
    memory[0].opcode = 8'hA;
    memory[1].src = 4'hc;
    memory[2].dest = 4'h4;
    memory[3].data = 16'hA4C;
    
    $display("===========================INSTRUCTIONS========================");
$display ("\n");

    $display("Opcode = %0h\n", memory[0].opcode);
    $display("Source = %0d\n",memory[1].src);
    $display("Destination = %0h\n", memory[2].dest);
    $display("Data = %0h\n",memory[3].data);
    
  end
  
endmodule
    

    
  
