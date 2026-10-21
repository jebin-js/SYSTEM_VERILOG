module test;
  int arr[4] = '{2, 5, 8, 11};
  int result = 0;

  initial begin
    foreach (arr[i]) begin
      if (arr[i] % 2 == 0)
        result = result + arr[i];
    end
    $display("%0d", result);
  end
endmodule

//Output

10
