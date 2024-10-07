//50days RTL
//S. RITHWIK REDDY

module HalfAdder_tb();
reg a,b;
wire sum,carry;

HalfAdder uut(a,b,sum,carry);

initial begin

a=0;b=0;
#10
a=0;b=1;
#10
a=1;b=0;
#10
a=1;b=1;
#10

$finish();
end 
endmodule