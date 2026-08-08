class base;
int i;
static function get();
static int a;
a++;
$display(a);
endfunction
endclass
base b1_h,b2_h;
module test();
initial
begin
b1_h.get();
b1_h.get();
b2_h.get();
end
endmodule

/* Output of the above is 

1
2
3
*/
