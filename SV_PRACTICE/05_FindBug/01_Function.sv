/*module test;

  function int square(input int n);
    int result;
    result = n * n;
  endfunction

  initial begin
    $display("%0d", square(5));
  end

endmodule*/


//output
add return result;

function int square(input int n);
  int result;
  result = n * n;
  return result;
endfunction
