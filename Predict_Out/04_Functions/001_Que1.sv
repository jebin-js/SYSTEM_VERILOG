module test;

  function automatic int calculate(input int a, b);
    return (a * 2) + (b / 2);
  endfunction

  initial begin
    $display("%0d", calculate(5, 7));
    $display("%0d", calculate(3, 8));
  end

endmodule

Output:

13
10
