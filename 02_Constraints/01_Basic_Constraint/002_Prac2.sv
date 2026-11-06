class packet;

  rand bit [7:0] address;
  rand bit [15:0] data;
  rand bit [1:0] transaction_type;

  constraint packet_cons {

    address inside {[10:100]};
    data inside {[20:200]};
    transaction_type inside {0, 1, 2};

    if (transaction_type == 0)
      data < 100;

    if (transaction_type == 1)
      address % 2 == 0;
  }

  covergroup cgrp_pack;

    c1: coverpoint address
        iff (transaction_type == 1);

    c2: coverpoint data;

    c3: coverpoint transaction_type;

    c4: cross c1, c2, c3;

  endgroup

  function new();
    cgrp_pack = new();
  endfunction

endclass


module packet_test;

  packet p = new();

  initial begin

    repeat (100) begin

      if (p.randomize()) begin

        p.cgrp_pack.sample();

        $display(
          "Address=%0d | Data=%0d | Transaction=%0d | Coverage=%.2f%%",
          p.address,
          p.data,
          p.transaction_type,
          p.cgrp_pack.get_inst_coverage()
        );

      end

    end

  end

endmodule
