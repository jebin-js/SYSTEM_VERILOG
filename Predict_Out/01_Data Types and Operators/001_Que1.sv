module test;
  bit a = 1'b1;
  logic b = 1'bx;
  int x = 7, y = 2;

  initial begin
    $display("%b", a & b);
    $display("%0d", x / y);
    $display("%0d", x % y);
  end
endmodule

//output
x
3
1
