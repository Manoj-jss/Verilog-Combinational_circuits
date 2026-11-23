//Arithmetic and logical unit using parameter(ALU).
//This is the RTL code
module alu_parameter(oe,command_in,a,b,temp);
	input oe;
	input [3:0]command_in;
	input [7:0]a,b;
	output reg [15:0]temp;
	reg [15:0]dout;
	
	parameter add=4'b0000;
	parameter sub=4'b0001;
	parameter mul=4'b0010;
	parameter div=4'b0011;
	parameter mod=4'b0100;
	parameter power=4'b0101;
	parameter increment=4'b0110;
	parameter decrement=4'b0111;
	parameter andd=4'b1000;
	parameter orr=4'b1001;
	parameter nandd=4'b1010;
	parameter norr=4'b1011;
	parameter reduction=4'b1100;
	parameter logical_right=4'b1101;
	parameter arithmetical_right=4'b1110;
	parameter equality=4'b1111;	
	
	always@(*)
	begin
		case(command_in)
			add:dout=a+b;
			sub:dout=a-b;
			mul:dout=a*b;
			div:dout=a/b;
			mod:dout=a%b;
			power:dout=a**1'b1;
			increment:dout=a+1;
			decrement:dout=b-1;
			andd:dout=a&b;
			orr:dout=a|b;
			nandd:dout=~(a&b);
			norr:dout=~(a|b);
			reduction:dout=&b;
			logical_right:dout=a>>1;
			arithmetical_right:dout=a>>>1;
			equality:dout=(a==b);
		endcase
		temp=~oe?16'bz:dout;
	
	end
	
endmodule
			
	
			
