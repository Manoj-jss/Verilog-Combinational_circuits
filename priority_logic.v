//This is the prority logic for 8:3 priority encoder
module priority_logic(input [7:0]d,output [7:0]p);
	assign p[7]=d[7];
	assign p[6]=d[6]&~d[7];
	assign p[5]=d[5]&~d[6]&~d[7];
	assign p[4]=d[4]&~d[5]&~d[6]&~d[7];
	assign p[3]=d[3]&~d[4]&~d[5]&~d[6]&~d[7];
	assign p[2]=d[2]&~d[3]&~d[4]&~d[5]&~d[6]&~d[7];
	assign p[1]=d[1]&~d[2]&~d[3]&~d[4]&~d[5]&~d[6]&~d[7];
	assign p[0]=d[0]&~d[1]&~d[2]&~d[3]&~d[4]&~d[5]&~d[6]&~d[7];
endmodule
