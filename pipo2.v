module pipo2(
    out,in,ld,clr,clk
    
);
    output reg [15:0] out;
    input [15:0]in;
    input ld;
    input clr;
    input clk;


    always @(posedge clk) begin
        if(clr) out<=16'b0;
        else if(ld) out<=in;
    end

endmodule