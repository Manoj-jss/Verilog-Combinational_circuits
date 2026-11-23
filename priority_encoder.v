//Priority encoder using priority logic and encoder using module instantiation.
module priority_encoder(input [7:0]p,output [2:0]y);
	wire [7:0]w1;
	
	priority_logic uut(p,w1);
	encoder8_3 en(w1,y);
endmodule
