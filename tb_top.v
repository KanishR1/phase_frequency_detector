`timescale 1ps/1ps
module tb_top;
    reg clka, clkb;
    wire qa, qb;
    top DUT(.clka(clka), .clkb(clkb), .qa(qa), .qb(qb));

    initial begin
        clka = 1'b0;
        forever begin
            #5
            clka = !clka;
        end
    end

    initial begin
        clkb = 1'b1;
        forever begin
            #7
            clkb = !clkb;
        end
    end

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,tb_top);
    end

    initial begin
        #200 $finish;
    end
        
endmodule