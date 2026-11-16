module half_adder(a,b,s,ca);
	input a,b;
	output s,ca;
	
	assign s=a^b;
	assign ca=a&b;
endmodule
