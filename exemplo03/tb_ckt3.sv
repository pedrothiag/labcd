module tb_ckt3;
    logic [3:0] a, b;
    logic cin;
    logic [3:0] s;
    logic cout;

    ckt3 uut (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

    initial begin
        $monitor("a = %d \t b = %d \t cin = %b \t | \t s = %d \t cout = %b", a, b, cin, s, cout);
                a = 6; b = 3; cin = 0;
        #10;    a = 6; b = 3; cin = 1;
        #10;    a = 12; b = 3; cin = 0;
        #10;    a = 12; b = 5; cin = 0;
        #10;    a = 12; b = 5; cin = 1;
        #10;    $stop;
    end
endmodule