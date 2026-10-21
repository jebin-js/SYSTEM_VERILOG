module test;

  int x = 5;

  task update_value(input int a);
    x = x + a;
    $display("%0d", x);
  endtask

  initial begin
    update_value(3);
    update_value(2);
    $display("%0d", x);
  end
endmodule

//Output

8
8
10
