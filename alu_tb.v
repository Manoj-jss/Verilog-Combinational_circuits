//This is the testbench of ALU(Arithmetic and logical unit)
//This testbench is done for all possible inputs.
module alu_tb();
	reg oe;
	reg [3:0]command_in;
	reg [7:0]a,b;
	integer i,j,k,o;
	wire [15:0]dout;
	
	alu_parameter uut(oe,command_in,a,b,dout);
	
	initial
		begin
			for(o=0;o<2;o=o+1)
			begin
			
			
				for(i=0;i<256;i=i+1)
				begin
					for(j=0;j<256;j=j+1)
					begin
						for(k=0;k<16;k=k+1)
						begin
							
							oe=o;
							command_in=k;
							b=j;
							a=i;
							#20;
						end
					end
				end
			end $finish;	
		end
	initial  
		$monitor("Enable=%b,A=%b,B=%b,Command=%b,Dout=%b",oe,a,b,command_in,dout);
endmodule
		
		
