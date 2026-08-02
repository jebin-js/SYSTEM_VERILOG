13. Given the following code sample:

byte my_byte;
integer my_integer;
int my_int;
bit [15:0] my_bit;
shortint my_short_int1;
shortint my_short_int2;

my_integer = 32’b000_1111_xxxx_zzzz;
my_int = my_integer;
my_bit = 16’h8000;
my_short_int1= my_bit;
my_short_int2 = my_short_int1-1;

a) What is the range of values my_byte can take?
b) What is the value of my_int in hex?
c) What is the value of my_bit in decimal?
d) What is the value of my_short_int1 in decimal?
e) What is the value of my_short_int2 in decimal?

Answer:

/*
(a) Range of my_byte	= -128 to +127
(b) Value of my_int in hex = 32'h00000F00
(c) Value of my_bit in decimal = 32768
(d) Value of my_short_int1 in decimal = -32768
(e) Value of my_short_int2 in decimal = 32767*/
