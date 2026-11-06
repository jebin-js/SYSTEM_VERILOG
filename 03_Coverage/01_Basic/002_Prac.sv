/*Create a memory transaction with read enable (0/1), write enable (0/1), address (0–255), and data (0–1023); constrain read and write enables so they cannot both be 1, use if-else constraints to restrict data based on the operation, and write a covergroup using individual coverpoints, cross coverage, and iff to sample only valid write operations.*/

class memory_transaction;
  
  rand bit read_enable;
  rand bit write_enable;
  rand bit [7:0] address;
  rand bit [9:0] data;
  
  constraint memory_cons {
    
    address inside {[0:255]};
    data inside {[0:1023]};
    
    !(read_enable && write_enable);
    
    
    if (data > 250 && data < 500)
      write_enable == 1;

  }
  
  covergroup cgrp_mem;
    
    c1: coverpoint write_enable;
    c2: coverpoint read_enable;
    c3: coverpoint data;
    c4: coverpoint address
    iff(data > 250 && data < 500);
    
    c5: cross c3, c4;

  endgroup
  
  function new();
    
    cgrp_mem = new();
    
  endfunction
  
endclass
  
  
  module memory_trans;
    
    memory_transaction mt;
    
    initial begin
      
      mt = new();
      
      repeat(250) begin
        
        void'(mt.randomize());
        mt.cgrp_mem.sample();
        
        $display("write = %0b | read = %0b | address = %0d | data = %0d | coverage = %.2f%%", mt.write_enable, mt.read_enable, mt.address, mt.data, mt.cgrp_mem.get_inst_coverage());
        
      end
      
    end
    
  endmodule


    
    
    # Loading sv_std.std
# Loading work.design_sv_unit(fast)
# Loading work.memory_trans(fast)
# 
# run -all
# write = 0 | read = 1 | address = 22 | data = 563 | coverage = 20.31%
# write = 1 | read = 0 | address = 183 | data = 196 | coverage = 40.62%
# write = 0 | read = 1 | address = 150 | data = 128 | coverage = 40.94%
# write = 1 | read = 0 | address = 46 | data = 315 | coverage = 41.57%
# write = 0 | read = 0 | address = 121 | data = 99 | coverage = 41.88%
# write = 1 | read = 0 | address = 68 | data = 612 | coverage = 42.19%
# write = 0 | read = 1 | address = 43 | data = 638 | coverage = 42.50%
# write = 1 | read = 0 | address = 191 | data = 229 | coverage = 42.82%
# write = 0 | read = 1 | address = 254 | data = 679 | coverage = 43.13%
# write = 0 | read = 0 | address = 214 | data = 891 | coverage = 43.44%
# write = 0 | read = 1 | address = 119 | data = 737 | coverage = 43.75%
# write = 0 | read = 1 | address = 52 | data = 525 | coverage = 44.07%
# write = 1 | read = 0 | address = 73 | data = 736 | coverage = 44.07%
# write = 1 | read = 0 | address = 139 | data = 314 | coverage = 44.38%
# write = 1 | read = 0 | address = 174 | data = 870 | coverage = 44.70%
# write = 0 | read = 0 | address = 203 | data = 748 | coverage = 44.70%
# write = 0 | read = 0 | address = 141 | data = 825 | coverage = 45.01%
# write = 0 | read = 1 | address = 185 | data = 657 | coverage = 45.32%
# write = 0 | read = 1 | address = 199 | data = 905 | coverage = 45.63%
# write = 0 | read = 1 | address = 158 | data = 1009 | coverage = 45.95%
# write = 0 | read = 1 | address = 1 | data = 621 | coverage = 45.95%
# write = 0 | read = 0 | address = 69 | data = 903 | coverage = 45.95%
# write = 0 | read = 1 | address = 43 | data = 238 | coverage = 45.95%
# write = 0 | read = 0 | address = 103 | data = 625 | coverage = 45.95%
# write = 0 | read = 1 | address = 75 | data = 680 | coverage = 45.95%
# write = 0 | read = 1 | address = 56 | data = 36 | coverage = 46.26%
# write = 0 | read = 0 | address = 96 | data = 216 | coverage = 46.57%
# write = 1 | read = 0 | address = 0 | data = 660 | coverage = 46.57%
# write = 0 | read = 0 | address = 232 | data = 109 | coverage = 46.57%
# write = 0 | read = 0 | address = 151 | data = 975 | coverage = 46.88%
# write = 0 | read = 0 | address = 117 | data = 153 | coverage = 47.20%
# write = 0 | read = 0 | address = 132 | data = 671 | coverage = 47.20%
# write = 1 | read = 0 | address = 77 | data = 978 | coverage = 47.51%
# write = 0 | read = 1 | address = 9 | data = 831 | coverage = 47.51%
# write = 0 | read = 0 | address = 232 | data = 905 | coverage = 47.51%
# write = 0 | read = 1 | address = 85 | data = 609 | coverage = 47.51%
# write = 1 | read = 0 | address = 198 | data = 164 | coverage = 47.82%
# write = 0 | read = 1 | address = 218 | data = 694 | coverage = 48.13%
# write = 0 | read = 0 | address = 185 | data = 770 | coverage = 48.45%
# write = 1 | read = 0 | address = 95 | data = 894 | coverage = 48.45%
# write = 0 | read = 1 | address = 47 | data = 530 | coverage = 48.76%
# write = 0 | read = 1 | address = 163 | data = 634 | coverage = 48.76%
# write = 0 | read = 0 | address = 156 | data = 216 | coverage = 48.76%
# write = 1 | read = 0 | address = 26 | data = 888 | coverage = 48.76%
# write = 1 | read = 0 | address = 37 | data = 483 | coverage = 49.39%
# write = 0 | read = 1 | address = 63 | data = 866 | coverage = 49.39%
# write = 1 | read = 0 | address = 39 | data = 687 | coverage = 49.39%
# write = 0 | read = 0 | address = 238 | data = 929 | coverage = 49.70%
# write = 0 | read = 0 | address = 157 | data = 996 | coverage = 50.01%
# write = 0 | read = 1 | address = 75 | data = 230 | coverage = 50.01%
# write = 0 | read = 1 | address = 135 | data = 680 | coverage = 50.01%
# write = 1 | read = 0 | address = 162 | data = 528 | coverage = 50.01%
# write = 0 | read = 0 | address = 139 | data = 125 | coverage = 50.33%
# write = 0 | read = 1 | address = 184 | data = 851 | coverage = 50.64%
# write = 0 | read = 1 | address = 235 | data = 197 | coverage = 50.64%
# write = 0 | read = 1 | address = 87 | data = 846 | coverage = 50.95%
# write = 0 | read = 0 | address = 48 | data = 893 | coverage = 50.95%
# write = 0 | read = 1 | address = 143 | data = 605 | coverage = 51.26%
# write = 0 | read = 0 | address = 186 | data = 807 | coverage = 51.58%
# write = 1 | read = 0 | address = 18 | data = 5 | coverage = 51.89%
# write = 0 | read = 0 | address = 6 | data = 822 | coverage = 51.89%
# write = 1 | read = 0 | address = 190 | data = 435 | coverage = 52.52%
# write = 0 | read = 1 | address = 197 | data = 990 | coverage = 52.52%
# write = 1 | read = 0 | address = 77 | data = 491 | coverage = 52.84%
# write = 0 | read = 0 | address = 229 | data = 519 | coverage = 52.84%
# write = 0 | read = 0 | address = 254 | data = 1007 | coverage = 52.84%
# write = 0 | read = 0 | address = 233 | data = 795 | coverage = 53.15%
# write = 0 | read = 0 | address = 19 | data = 994 | coverage = 53.15%
# write = 0 | read = 0 | address = 96 | data = 806 | coverage = 53.15%
# write = 1 | read = 0 | address = 26 | data = 221 | coverage = 53.15%
# write = 0 | read = 0 | address = 111 | data = 109 | coverage = 53.15%
# write = 1 | read = 0 | address = 163 | data = 453 | coverage = 53.78%
# write = 1 | read = 0 | address = 34 | data = 250 | coverage = 54.09%
# write = 0 | read = 1 | address = 15 | data = 676 | coverage = 54.09%
# write = 1 | read = 0 | address = 89 | data = 36 | coverage = 54.09%
# write = 1 | read = 0 | address = 239 | data = 412 | coverage = 54.72%
# write = 0 | read = 1 | address = 207 | data = 544 | coverage = 55.03%
# write = 1 | read = 0 | address = 172 | data = 931 | coverage = 55.03%
# write = 1 | read = 0 | address = 214 | data = 772 | coverage = 55.03%
# write = 1 | read = 0 | address = 184 | data = 445 | coverage = 55.35%
# write = 1 | read = 0 | address = 236 | data = 294 | coverage = 55.67%
# write = 0 | read = 1 | address = 234 | data = 580 | coverage = 55.98%
# write = 1 | read = 0 | address = 136 | data = 291 | coverage = 55.99%
# write = 1 | read = 0 | address = 160 | data = 72 | coverage = 56.30%
# write = 0 | read = 0 | address = 14 | data = 788 | coverage = 56.30%
# write = 0 | read = 0 | address = 93 | data = 1020 | coverage = 56.30%
# write = 1 | read = 0 | address = 235 | data = 541 | coverage = 56.30%
# write = 1 | read = 0 | address = 181 | data = 484 | coverage = 56.62%
# write = 0 | read = 1 | address = 183 | data = 77 | coverage = 56.62%
# write = 0 | read = 1 | address = 161 | data = 128 | coverage = 56.62%
# write = 0 | read = 0 | address = 147 | data = 736 | coverage = 56.62%
# write = 1 | read = 0 | address = 116 | data = 691 | coverage = 56.62%
# write = 0 | read = 1 | address = 22 | data = 887 | coverage = 56.62%
# write = 1 | read = 0 | address = 250 | data = 742 | coverage = 56.62%
# write = 1 | read = 0 | address = 30 | data = 384 | coverage = 57.25%
# write = 0 | read = 1 | address = 147 | data = 19 | coverage = 57.56%
# write = 1 | read = 0 | address = 152 | data = 506 | coverage = 57.87%
# write = 1 | read = 0 | address = 214 | data = 12 | coverage = 57.87%
# write = 0 | read = 1 | address = 254 | data = 716 | coverage = 58.18%
# write = 1 | read = 0 | address = 71 | data = 675 | coverage = 58.18%
# write = 1 | read = 0 | address = 206 | data = 485 | coverage = 58.50%
# write = 0 | read = 1 | address = 14 | data = 783 | coverage = 58.50%
# write = 0 | read = 1 | address = 81 | data = 919 | coverage = 58.81%
# write = 0 | read = 1 | address = 4 | data = 803 | coverage = 58.81%
# write = 0 | read = 1 | address = 26 | data = 593 | coverage = 58.81%
# write = 1 | read = 0 | address = 156 | data = 395 | coverage = 59.13%
# write = 0 | read = 1 | address = 70 | data = 928 | coverage = 59.13%
# write = 1 | read = 0 | address = 57 | data = 341 | coverage = 59.76%
# write = 1 | read = 0 | address = 125 | data = 170 | coverage = 59.76%
# write = 0 | read = 0 | address = 237 | data = 781 | coverage = 59.76%
# write = 1 | read = 0 | address = 198 | data = 379 | coverage = 60.39%
# write = 0 | read = 0 | address = 121 | data = 912 | coverage = 60.39%
# write = 1 | read = 0 | address = 86 | data = 414 | coverage = 60.71%
# write = 0 | read = 1 | address = 190 | data = 769 | coverage = 60.71%
# write = 1 | read = 0 | address = 86 | data = 620 | coverage = 60.71%
# write = 0 | read = 0 | address = 22 | data = 749 | coverage = 60.71%
# write = 1 | read = 0 | address = 230 | data = 726 | coverage = 61.02%
# write = 1 | read = 0 | address = 228 | data = 335 | coverage = 61.65%
# write = 1 | read = 0 | address = 161 | data = 378 | coverage = 61.66%
# write = 1 | read = 0 | address = 130 | data = 1006 | coverage = 61.66%
# write = 0 | read = 1 | address = 92 | data = 614 | coverage = 61.66%
# write = 0 | read = 1 | address = 215 | data = 906 | coverage = 61.66%
# write = 0 | read = 0 | address = 142 | data = 872 | coverage = 61.66%
# write = 0 | read = 1 | address = 177 | data = 210 | coverage = 61.66%
# write = 1 | read = 0 | address = 178 | data = 502 | coverage = 61.66%
# write = 1 | read = 0 | address = 244 | data = 50 | coverage = 61.97%
# write = 1 | read = 0 | address = 215 | data = 675 | coverage = 61.97%
# write = 1 | read = 0 | address = 94 | data = 434 | coverage = 62.29%
# write = 1 | read = 0 | address = 217 | data = 739 | coverage = 62.29%
# write = 0 | read = 1 | address = 235 | data = 170 | coverage = 62.29%
# write = 1 | read = 0 | address = 91 | data = 137 | coverage = 62.29%
# write = 1 | read = 0 | address = 145 | data = 523 | coverage = 62.29%
# write = 0 | read = 1 | address = 150 | data = 924 | coverage = 62.29%
# write = 0 | read = 1 | address = 167 | data = 762 | coverage = 62.60%
# write = 0 | read = 0 | address = 116 | data = 991 | coverage = 62.60%
# write = 0 | read = 1 | address = 19 | data = 63 | coverage = 62.60%
# write = 1 | read = 0 | address = 59 | data = 380 | coverage = 62.60%
# write = 1 | read = 0 | address = 63 | data = 385 | coverage = 62.92%
# write = 1 | read = 0 | address = 46 | data = 669 | coverage = 62.92%
# write = 1 | read = 0 | address = 15 | data = 574 | coverage = 62.92%
# write = 0 | read = 1 | address = 84 | data = 1023 | coverage = 62.92%
# write = 0 | read = 1 | address = 117 | data = 797 | coverage = 62.92%
# write = 0 | read = 1 | address = 22 | data = 772 | coverage = 62.92%
# write = 1 | read = 0 | address = 165 | data = 395 | coverage = 63.24%
# write = 1 | read = 0 | address = 73 | data = 541 | coverage = 63.24%
# write = 1 | read = 0 | address = 96 | data = 963 | coverage = 63.24%
# write = 0 | read = 1 | address = 253 | data = 63 | coverage = 63.24%
# write = 1 | read = 0 | address = 12 | data = 332 | coverage = 63.55%
# write = 0 | read = 0 | address = 179 | data = 871 | coverage = 63.55%
# write = 0 | read = 1 | address = 97 | data = 823 | coverage = 63.55%
# write = 0 | read = 1 | address = 129 | data = 718 | coverage = 63.55%
# write = 1 | read = 0 | address = 240 | data = 341 | coverage = 63.87%
# write = 1 | read = 0 | address = 111 | data = 667 | coverage = 63.87%
# write = 0 | read = 1 | address = 59 | data = 522 | coverage = 63.87%
# write = 1 | read = 0 | address = 214 | data = 422 | coverage = 64.50%
# write = 0 | read = 0 | address = 139 | data = 133 | coverage = 64.50%
# write = 0 | read = 0 | address = 196 | data = 651 | coverage = 64.81%
# write = 0 | read = 1 | address = 98 | data = 870 | coverage = 64.81%
# write = 0 | read = 1 | address = 84 | data = 77 | coverage = 64.81%
# write = 0 | read = 0 | address = 171 | data = 92 | coverage = 65.13%
# write = 1 | read = 0 | address = 68 | data = 262 | coverage = 65.76%
# write = 1 | read = 0 | address = 113 | data = 767 | coverage = 65.76%
# write = 0 | read = 1 | address = 186 | data = 665 | coverage = 65.76%
# write = 0 | read = 1 | address = 254 | data = 644 | coverage = 65.76%
# write = 0 | read = 1 | address = 164 | data = 523 | coverage = 65.76%
# write = 1 | read = 0 | address = 102 | data = 805 | coverage = 65.76%
# write = 0 | read = 1 | address = 245 | data = 242 | coverage = 65.76%
# write = 0 | read = 0 | address = 177 | data = 538 | coverage = 65.76%
# write = 0 | read = 0 | address = 118 | data = 640 | coverage = 65.76%
# write = 1 | read = 0 | address = 80 | data = 430 | coverage = 66.07%
# write = 1 | read = 0 | address = 13 | data = 93 | coverage = 66.07%
# write = 0 | read = 0 | address = 164 | data = 570 | coverage = 66.07%
# write = 1 | read = 0 | address = 171 | data = 921 | coverage = 66.07%
# write = 0 | read = 0 | address = 172 | data = 608 | coverage = 66.07%
# write = 0 | read = 1 | address = 93 | data = 961 | coverage = 66.07%
# write = 0 | read = 0 | address = 139 | data = 988 | coverage = 66.07%
# write = 1 | read = 0 | address = 158 | data = 755 | coverage = 66.07%
# write = 1 | read = 0 | address = 102 | data = 627 | coverage = 66.07%
# write = 0 | read = 0 | address = 43 | data = 781 | coverage = 66.07%
# write = 0 | read = 1 | address = 110 | data = 13 | coverage = 66.07%
# write = 0 | read = 0 | address = 101 | data = 654 | coverage = 66.07%
# write = 0 | read = 1 | address = 142 | data = 61 | coverage = 66.07%
# write = 1 | read = 0 | address = 179 | data = 182 | coverage = 66.39%
# write = 0 | read = 0 | address = 131 | data = 845 | coverage = 66.39%
# write = 0 | read = 0 | address = 210 | data = 182 | coverage = 66.39%
# write = 1 | read = 0 | address = 34 | data = 712 | coverage = 66.39%
# write = 0 | read = 0 | address = 112 | data = 131 | coverage = 66.39%
# write = 1 | read = 0 | address = 235 | data = 666 | coverage = 66.39%
# write = 1 | read = 0 | address = 64 | data = 405 | coverage = 66.70%
# write = 1 | read = 0 | address = 206 | data = 344 | coverage = 66.71%
# write = 0 | read = 1 | address = 28 | data = 822 | coverage = 66.71%
# write = 0 | read = 1 | address = 166 | data = 30 | coverage = 66.71%
# write = 1 | read = 0 | address = 58 | data = 533 | coverage = 66.71%
# write = 1 | read = 0 | address = 57 | data = 606 | coverage = 66.71%
# write = 1 | read = 0 | address = 52 | data = 110 | coverage = 66.71%
# write = 1 | read = 0 | address = 92 | data = 987 | coverage = 66.71%
# write = 1 | read = 0 | address = 158 | data = 275 | coverage = 67.03%
# write = 0 | read = 0 | address = 246 | data = 61 | coverage = 67.03%
# write = 0 | read = 1 | address = 190 | data = 617 | coverage = 67.03%
# write = 0 | read = 0 | address = 26 | data = 770 | coverage = 67.03%
# write = 0 | read = 1 | address = 56 | data = 849 | coverage = 67.03%
# write = 0 | read = 1 | address = 97 | data = 800 | coverage = 67.03%
# write = 1 | read = 0 | address = 230 | data = 760 | coverage = 67.03%
# write = 1 | read = 0 | address = 144 | data = 942 | coverage = 67.03%
# write = 1 | read = 0 | address = 106 | data = 856 | coverage = 67.03%
# write = 0 | read = 0 | address = 140 | data = 237 | coverage = 67.03%
# write = 1 | read = 0 | address = 187 | data = 297 | coverage = 67.03%
# write = 1 | read = 0 | address = 60 | data = 372 | coverage = 67.04%
# write = 0 | read = 1 | address = 91 | data = 208 | coverage = 67.04%
# write = 1 | read = 0 | address = 56 | data = 587 | coverage = 67.04%
# write = 0 | read = 1 | address = 80 | data = 621 | coverage = 67.04%
# write = 1 | read = 0 | address = 49 | data = 388 | coverage = 67.35%
# write = 1 | read = 0 | address = 175 | data = 255 | coverage = 67.67%
# write = 0 | read = 1 | address = 68 | data = 1000 | coverage = 67.67%
# write = 1 | read = 0 | address = 76 | data = 329 | coverage = 67.68%
# write = 1 | read = 0 | address = 207 | data = 945 | coverage = 67.99%
# write = 1 | read = 0 | address = 107 | data = 278 | coverage = 68.31%
# write = 1 | read = 0 | address = 219 | data = 122 | coverage = 68.31%
# write = 1 | read = 0 | address = 229 | data = 833 | coverage = 68.31%
# write = 1 | read = 0 | address = 88 | data = 573 | coverage = 68.31%
# write = 1 | read = 0 | address = 158 | data = 857 | coverage = 68.31%
# write = 1 | read = 0 | address = 51 | data = 973 | coverage = 68.31%
# write = 1 | read = 0 | address = 231 | data = 475 | coverage = 68.62%
# write = 0 | read = 1 | address = 144 | data = 785 | coverage = 68.62%
# write = 0 | read = 1 | address = 48 | data = 552 | coverage = 68.62%
# write = 1 | read = 0 | address = 183 | data = 302 | coverage = 68.63%
# write = 0 | read = 1 | address = 51 | data = 629 | coverage = 68.63%
# write = 1 | read = 0 | address = 190 | data = 985 | coverage = 68.63%
# write = 0 | read = 0 | address = 55 | data = 945 | coverage = 68.63%
# write = 0 | read = 1 | address = 65 | data = 690 | coverage = 68.63%
# write = 1 | read = 0 | address = 219 | data = 697 | coverage = 68.63%
# write = 1 | read = 0 | address = 115 | data = 331 | coverage = 68.95%
# write = 1 | read = 0 | address = 154 | data = 295 | coverage = 69.26%
# write = 1 | read = 0 | address = 77 | data = 240 | coverage = 69.26%
# write = 1 | read = 0 | address = 235 | data = 367 | coverage = 69.89%
# write = 1 | read = 0 | address = 166 | data = 543 | coverage = 69.89%
# write = 1 | read = 0 | address = 211 | data = 417 | coverage = 70.21%
# write = 1 | read = 0 | address = 223 | data = 422 | coverage = 70.53%
# write = 1 | read = 0 | address = 117 | data = 1014 | coverage = 70.53%
# write = 0 | read = 0 | address = 46 | data = 208 | coverage = 70.53%
# write = 0 | read = 0 | address = 48 | data = 500 | coverage = 70.53%
# write = 0 | read = 1 | address = 224 | data = 830 | coverage = 70.53%
# write = 1 | read = 0 | address = 5 | data = 355 | coverage = 70.84%
# write = 0 | read = 0 | address = 150 | data = 96 | coverage = 70.84%
# write = 0 | read = 1 | address = 81 | data = 544 | coverage = 70.84%
# write = 0 | read = 1 | address = 147 | data = 126 | coverage = 70.84%
# write = 1 | read = 0 | address = 48 | data = 453 | coverage = 70.85%
# write = 0 | read = 1 | address = 101 | data = 988 | coverage = 70.85%
# write = 1 | read = 0 | address = 231 | data = 83 | coverage = 70.85%
# write = 0 | read = 1 | address = 85 | data = 123 | coverage = 70.85%
# exit
