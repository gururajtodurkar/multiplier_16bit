`include "pipo1.v"
`include "pipo2.v"
`include "add.v"
`include "cntr.v"
`include "comp.v"


module mul_datapath(eqz,lda,ldb,ldp,clrp,decb,bus,clk);
    output eqz;
    input lda,ldb,ldp,clrp,decb;
    input [15:0]bus;
    input clk;
    wire [15:0] x,y,z,co;
    pipo1 rega (.out(x),.in(bus),.ld(lda),.clk(clk));
    pipo2 regp (y,z,ldp,clrp,clk);
    add a1(z,x,y);
    cntr regb (co,bus,ldb,decb,clk);
    comp c1 (eqz,co);
endmodule