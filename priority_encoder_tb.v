//This is the testbench of priority encoder.
module priority_encoder_tb();
	reg [7:0]p;
	wire [2:0]y;
	integer i;

	priority_encoder uut(p,y);

	initial
		begin
			p=0;
		end
	initial
		$monitor("P=%b,y3=%b,y2=%b,y1=%b",p,y[2],y[1],y[0]);
	initial
		begin
			for(i=1;i<256;i=i+1)
			begin
				p=i;
				#10;
			end
		$finish;
		end
	

endmodule
			
