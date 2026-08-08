class base;
static int i;
static function static get();
int a;
a++;
i++;
$display(a);
$display(i);
endfunction
endclass
base b1_h,b2_h;
module test();
initial
begin
b1_h.get(); b1_h.get(); b2_h.get();
end
endmodule

/* outut of the above is 

1
1

2
2

3
3
*/
