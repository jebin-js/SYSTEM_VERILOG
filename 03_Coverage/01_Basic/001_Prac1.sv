//001 Create a packet with randomized address (10–100), data (20–200), and transaction type (0–2); apply conditional constraints based on transaction type, and write a covergroup using individual coverpoints, cross coverage, iff.

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


Output

# Loading work.design_sv_unit(fast)
# Loading work.packet_test(fast)
# 
# run -all
# Address=30 | Data=128 | Transaction=2 | Coverage=6.64%
# Address=71 | Data=80 | Transaction=0 | Coverage=12.89%
# Address=83 | Data=84 | Transaction=0 | Coverage=12.89%
# Address=15 | Data=140 | Transaction=2 | Coverage=12.89%
# Address=55 | Data=166 | Transaction=2 | Coverage=12.89%
# Address=95 | Data=200 | Transaction=2 | Coverage=12.89%
# Address=63 | Data=98 | Transaction=0 | Coverage=12.89%
# Address=70 | Data=85 | Transaction=1 | Coverage=19.53%
# Address=64 | Data=80 | Transaction=2 | Coverage=19.53%
# Address=36 | Data=141 | Transaction=1 | Coverage=19.92%
# Address=76 | Data=64 | Transaction=2 | Coverage=19.92%
# Address=84 | Data=136 | Transaction=2 | Coverage=19.92%
# Address=18 | Data=76 | Transaction=0 | Coverage=19.92%
# Address=80 | Data=140 | Transaction=1 | Coverage=20.32%
# Address=93 | Data=162 | Transaction=2 | Coverage=20.32%
# Address=98 | Data=174 | Transaction=1 | Coverage=20.71%
# Address=47 | Data=74 | Transaction=0 | Coverage=20.71%
# Address=17 | Data=155 | Transaction=2 | Coverage=20.71%
# Address=39 | Data=39 | Transaction=2 | Coverage=20.71%
# Address=95 | Data=187 | Transaction=2 | Coverage=20.71%
# Address=74 | Data=37 | Transaction=2 | Coverage=20.71%
# Address=54 | Data=83 | Transaction=0 | Coverage=20.71%
# Address=20 | Data=75 | Transaction=0 | Coverage=20.71%
# Address=99 | Data=107 | Transaction=2 | Coverage=20.71%
# Address=38 | Data=95 | Transaction=0 | Coverage=20.71%
# Address=55 | Data=78 | Transaction=0 | Coverage=20.71%
# Address=22 | Data=23 | Transaction=1 | Coverage=21.10%
# Address=10 | Data=91 | Transaction=1 | Coverage=21.49%
# Address=70 | Data=123 | Transaction=2 | Coverage=21.49%
# Address=59 | Data=141 | Transaction=2 | Coverage=21.49%
# Address=27 | Data=26 | Transaction=0 | Coverage=21.49%
# Address=59 | Data=108 | Transaction=2 | Coverage=21.49%
# Address=31 | Data=41 | Transaction=0 | Coverage=21.49%
# Address=53 | Data=96 | Transaction=2 | Coverage=21.49%
# Address=11 | Data=66 | Transaction=2 | Coverage=21.49%
# Address=88 | Data=92 | Transaction=0 | Coverage=21.49%
# Address=62 | Data=82 | Transaction=1 | Coverage=21.89%
# Address=77 | Data=146 | Transaction=2 | Coverage=21.89%
# Address=100 | Data=45 | Transaction=1 | Coverage=22.28%
# Address=76 | Data=52 | Transaction=1 | Coverage=22.67%
# Address=54 | Data=110 | Transaction=2 | Coverage=22.67%
# Address=45 | Data=78 | Transaction=2 | Coverage=22.67%
# Address=90 | Data=103 | Transaction=2 | Coverage=22.67%
# Address=18 | Data=114 | Transaction=2 | Coverage=22.67%
# Address=77 | Data=114 | Transaction=2 | Coverage=22.67%
# Address=15 | Data=23 | Transaction=0 | Coverage=22.67%
# Address=68 | Data=74 | Transaction=1 | Coverage=22.67%
# Address=92 | Data=66 | Transaction=0 | Coverage=22.67%
# Address=39 | Data=104 | Transaction=2 | Coverage=22.67%
# Address=93 | Data=125 | Transaction=2 | Coverage=22.67%
# Address=100 | Data=34 | Transaction=2 | Coverage=22.67%
# Address=22 | Data=31 | Transaction=1 | Coverage=22.67%
# Address=84 | Data=32 | Transaction=1 | Coverage=23.06%
# Address=45 | Data=58 | Transaction=2 | Coverage=23.06%
# Address=20 | Data=87 | Transaction=1 | Coverage=23.06%
# Address=41 | Data=25 | Transaction=0 | Coverage=23.06%
# Address=46 | Data=146 | Transaction=1 | Coverage=23.45%
# Address=75 | Data=53 | Transaction=2 | Coverage=23.45%
# Address=14 | Data=85 | Transaction=2 | Coverage=23.45%
# Address=46 | Data=30 | Transaction=1 | Coverage=23.45%
# Address=78 | Data=37 | Transaction=1 | Coverage=23.45%
# Address=76 | Data=119 | Transaction=2 | Coverage=23.45%
# Address=12 | Data=86 | Transaction=0 | Coverage=23.45%
# Address=12 | Data=196 | Transaction=1 | Coverage=23.85%
# Address=46 | Data=132 | Transaction=2 | Coverage=23.85%
# Address=31 | Data=61 | Transaction=2 | Coverage=23.85%
# Address=54 | Data=51 | Transaction=0 | Coverage=23.85%
# Address=43 | Data=193 | Transaction=2 | Coverage=23.85%
# Address=78 | Data=78 | Transaction=0 | Coverage=23.85%
# Address=82 | Data=168 | Transaction=2 | Coverage=23.85%
# Address=57 | Data=107 | Transaction=2 | Coverage=23.85%
# Address=34 | Data=20 | Transaction=0 | Coverage=23.85%
# Address=96 | Data=125 | Transaction=2 | Coverage=23.85%
# Address=91 | Data=137 | Transaction=2 | Coverage=23.85%
# Address=74 | Data=20 | Transaction=2 | Coverage=23.85%
# Address=12 | Data=28 | Transaction=1 | Coverage=23.85%
# Address=36 | Data=44 | Transaction=1 | Coverage=23.85%
# Address=88 | Data=144 | Transaction=1 | Coverage=24.24%
# Address=59 | Data=65 | Transaction=0 | Coverage=24.24%
# Address=21 | Data=174 | Transaction=2 | Coverage=24.24%
# Address=52 | Data=180 | Transaction=1 | Coverage=24.63%
# Address=55 | Data=80 | Transaction=0 | Coverage=24.63%
# Address=90 | Data=37 | Transaction=0 | Coverage=24.63%
# Address=35 | Data=94 | Transaction=0 | Coverage=24.63%
# Address=45 | Data=36 | Transaction=0 | Coverage=24.63%
# Address=55 | Data=96 | Transaction=0 | Coverage=24.63%
# Address=90 | Data=57 | Transaction=0 | Coverage=24.63%
# Address=45 | Data=49 | Transaction=2 | Coverage=24.63%
# Address=79 | Data=61 | Transaction=0 | Coverage=24.63%
# Address=30 | Data=111 | Transaction=2 | Coverage=24.63%
# Address=68 | Data=50 | Transaction=0 | Coverage=24.63%
# Address=46 | Data=156 | Transaction=2 | Coverage=24.63%
# Address=18 | Data=53 | Transaction=0 | Coverage=24.63%
# Address=45 | Data=93 | Transaction=2 | Coverage=24.63%
# Address=17 | Data=90 | Transaction=2 | Coverage=24.63%
# Address=58 | Data=91 | Transaction=1 | Coverage=25.02%
# Address=23 | Data=165 | Transaction=2 | Coverage=25.02%
# Address=59 | Data=164 | Transaction=2 | Coverage=25.02%
# Address=18 | Data=77 | Transaction=0 | Coverage=25.02%
# Address=16 | Data=177 | Transaction=1 | Coverage=25.42%
# exit
# End time: 00:07:47 on Nov 06,2026, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
End time: 00:07:47 on Nov 06,2026, Elapsed time: 0:00:02
*** Summary *********************************************
    qrun: Errors:   0, Warnings:   0
    vlog: Errors:   0, Warnings:   0
    vopt: Errors:   0, Warnings:   1
    vsim: Errors:   0, Warnings:   0
  Totals: Errors:   0, Warnings:   1
