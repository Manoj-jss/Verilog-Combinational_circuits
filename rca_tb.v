//This is the testbench of ripple carry adder
module rca_tb();
	reg [3:0]A,B;
	reg Cin;
	wire [3:0]S;
	wire Cout;
	integer i,j,k;
	
	rca ra(A,B,Cin,S,Cout);
	
	initial 
		begin 
			for(i=0;i<16;i=i+1)
			begin
				for(j=0;j<16;j=j+1)
				begin
					for(k=0;k<2;k=k+1)
					begin
						A=i;
						B=j;
						Cin=k;
						
						#10;
						
						$display("a=%b,b=%b,cin=%b,s=%b,cout=%b",A,B,Cin,S,Cout);					
					end
				end
			end
		end
endmodule
