module test;

  int arr[4] = '{3, 6, 9, 12};

  function automatic int calculate_sum(input int a[]);
    int sum = 0;

    foreach (a[i]) begin
      if (a[i] > 5)
        sum = sum + a[i];
    end

    return sum;
  endfunction

  initial begin
    $display("%0d", calculate_sum(arr));
  end

endmodule

//Output

27
