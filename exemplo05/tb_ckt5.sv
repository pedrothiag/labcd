module tb_ckt5;
    logic dl, clkl;
    logic ql; 
    ckt5 uut (.d(dl), .clk(clkl), .q(ql));

    //Aplicacao das entradas
    initial begin
        clkl = 0;
        dl = 0;

        #28; dl = 1;
        #10; dl = 0;
        #30; dl = 1;
        #40; dl = 0;
        #10; $stop;
    end

    //Procedimento para criacao do sinal de clock
    always begin
        #5; clkl = ~clkl;
    end
endmodule