`include "mul_datapath.v"
`include "controller.v"

module multiplier_tb();
    reg [15:0] data_in;
    reg clk,start;
    wire done;

    mul_datapath m1(eqz,lda,ldb,ldp,clrp,decb,data_in,clk);
    controller m2(lda,ldb,ldp,clrp,decb,done,clk,eqz,start);

    initial begin
        clk = 1'b0;
        #3 start = 1'b1;
        #100 $finish;
    end

    always #5 clk = ~clk;


    initial begin
        #17  data_in = 17;
        #10 data_in = 5;
    end

    initial begin
        $monitor ($time,"%d %b",m1.y,done);
        $dumpfile("multiplier_tb.vcd");
        $dumpvars(0,multiplier_tb);
    end
    endmodule