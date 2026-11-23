//This is testbench of 4:1 MUX using task 
module mux4_1_task_tb();
	reg [3:0]d;
	reg [1:0]s;
	wire y;
	integer i,j;
	
	mux4_1_bh uut(d,s,y);
	
	task initialize;
	begin
		{d,s}=0;
	end
	endtask
	
	task stimulus(input [3:0]i,input [1:0]j);
	begin
		d=i;
		s=j;
	end
	endtask
	
	initial
		begin
			$monitor("Data_in=%b,Sel=%b,Output=%b",d,s,y);
			
			initialize;//call by value of task
			
			for(i=0;i<16;i=i+1)
			begin
				for(j=0;j<4;j=j+1)
				begin
				stimulus(i,j);
				#100;
				end
			end
		$finish;
		end 
endmodule
		 
	
	
