//This is 4:1 MUX using behavioural modelling style.
module mux4_1_bh(d,s,y);
//Port directions
input [3:0]d;
input [1:0]s;
output reg y;
	always@(*)
	begin //mux behavior as a parallel logic
		case(s)
			2'b00:y=d[0];
			2'b01:y=d[1];
			2'b10:y=d[2];
			2'b11:y=d[3];
			default:y=4'b0000;
		endcase
	end
endmodule

