module dfflop (
    input clk, rst, din, output reg q
);

always @(posedge clk or posedge rst) begin
    if( rst )
		q<=0;
    else
    q<=din;
end

endmodule