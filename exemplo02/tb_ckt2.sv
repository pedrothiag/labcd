module tb_ckt2;
    logic x, y, z;
    logic F1, F2;

    ckt2 uut (x, y, z, F1, F2);

    initial begin
        $monitor("x = %b \t y = %b \t z = %b \t | \t F1 = %b \t F2 = %b", x, y, z, F1, F2);
             x = 0; y = 0; z = 0;
        #10; x = 0; y = 0; z = 1;
        #10; x = 0; y = 1; z = 0;
        #10; x = 0; y = 1; z = 1;
        #10; x = 1; y = 0; z = 0;
        #10; x = 1; y = 0; z = 1;
        #10; x = 1; y = 1; z = 0;
        #10; x = 1; y = 1; z = 1;
        #10; $stop;
    end
endmodule