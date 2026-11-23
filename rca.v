//Ripple carry adder using Full adders by module instantiation method
module rca(a,b,cin,s,cout);
	input [3:0]a;
	input [3:0]b;
	input cin;
	output [3:0]s;
	output cout;
	wire c0,c1,c2;
	
	fa f1(a[0],b[0],cin,s[0],c0);
	fa f2(a[1],b[1],c0,s[1],c1);
	fa f3(a[2],b[2],c1,s[2],c2);
	fa f4(a[3],b[3],c2,s[3],cout);
endmodule
