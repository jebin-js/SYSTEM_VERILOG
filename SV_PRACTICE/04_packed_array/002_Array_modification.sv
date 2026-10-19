module test;

  int arr[4] = '{2, 4, 6, 8};

  initial begin
    arr[1] = arr[0] + arr[3];
    arr[2] = arr[1] - arr[0];

    foreach (arr[i])
      $display("%0d", arr[i]);
  end

endmodule

out
2
10
8
8
