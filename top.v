`include "dfflop.v"
module top (
    input clka, clkb, output qa, qb
);
    wire tmp;
    dfflop U1(.clk(clka), .rst(tmp), .din(1'b1), .q(qa));
    dfflop U2(.clk(clkb), .rst(tmp), .din(1'b1), .q(qb));
    assign tmp  = (qa & qb);
endmodule