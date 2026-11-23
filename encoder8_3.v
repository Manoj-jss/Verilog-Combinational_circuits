//This is the encoder logic for the prority encoder
module encoder8_3(input [7:0]i,output reg [2:0]y);
        always@(*)
                begin
                        y[0]=i[1]|i[3]|i[5]|i[7];
                        y[1]=i[2]|i[3]|i[6]|i[7];
                        y[2]=i[4]|i[5]|i[6]|i[7];
                end
endmodule
