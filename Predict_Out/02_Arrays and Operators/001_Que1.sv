module test;
  int arr[4] = '{3, 6, 9, 12};

  initial begin
    arr[1] = arr[0] + arr[2];
    arr[3] = arr[1] / 3;

    $display("%0d", arr[1]);
    $display("%0d", arr[3]);
  end
endmodule

//output
12
4
