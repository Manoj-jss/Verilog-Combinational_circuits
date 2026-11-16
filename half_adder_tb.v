module half_adder_tb();
	reg A,B;
	wire S,CA;
	
	half_adder uut(.a(A),.b(B),.s(S),.ca(CA));
	
	initial begin $monitor("Time=%0t, A=%b ,B=%b ,S=%b, CA=%b",A,B,S,CA);
		A=0;B=0;#10;
		A=0;B=1;#10;
		A=1;B=0;#10;
		A=1;B=1;#10;
	
	$finish;
	end
	
endmodule
