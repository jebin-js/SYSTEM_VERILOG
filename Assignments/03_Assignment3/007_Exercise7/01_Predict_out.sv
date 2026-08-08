class base;
static int i;
function static get();
int a;
a++;
i++;
$display(a);
$display(b);
endfunction
endclass
module test();
initial
begin
b1_h.get();
b1_h.get();
b2_h.get();
end
endmodule

/* Output of the above code is 

Base b1_h and b2_h was not declared so error occurs 
$display(b) --> was undeclared variable

*/
