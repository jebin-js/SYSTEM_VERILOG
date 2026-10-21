module test;

  int arr[3] = '{4, 7, 10};

  task modify(input int index, input int value);
    arr[index] = arr[index] + value;
  endtask

  initial begin
    modify(0, 3);
    modify(2, arr[0]);

    foreach (arr[i])
      $display("%0d", arr[i]);
  end

endmodule

//Output

7
7
17
