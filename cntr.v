module cntr(
    output reg [15:0] out,
    input [15:0]in,
    input ld,
    input dec,
    input clk
);

    always@ (posedge clk) begin
        if (ld) out<=in;
        else if (dec) out<=out-1;
    end



endmodule