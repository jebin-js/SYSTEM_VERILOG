module test;
  typedef enum logic [1:0] {
    IDLE,
    SETUP,
    ACCESS,
    DONE
  } state_t;

  state_t state;

  initial begin
    state = IDLE;
    $display("%0d", state);

    state = ACCESS;
    $display("%0d", state);

    state = DONE;
    $display("%0d", state);
  end
endmodule

//Output

00
10
11
