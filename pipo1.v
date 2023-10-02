module pipo1(out,in,ld,clk);
    output reg [15:0]out;
    input [15:0]in;
    input ld;
    input clk;
    always @ (posedge clk) begin
        if(ld) 
            out <= in;
    end
endmodule