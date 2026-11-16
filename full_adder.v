module fa(a,b,c,sum,carry);
	input a,b,c;
	output sum,carry;
	wire w1,w2,w3;
	
	half_adder HA1(.a(a),.b(b),.s(w1),.ca(w2));
	half_adder HA2(.a(c),.b(w1),.s(sum),.ca(w3));
	or Or1(carry,w2,w3);
endmodule

	
	