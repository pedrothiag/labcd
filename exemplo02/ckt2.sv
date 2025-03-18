module ckt2 (
    input logic x, y, z,
    output logic F1, F2
);
    logic w1, w2, w3, w4, w5, w6;
    assign w1 = ~y;
    assign w2 = w1 & z;
    assign F1 = x | w2;
    assign w3 = ~y;
    assign w4 = ~x;
    assign w5 = x & w3;
    assign w6 = w4 & z;
    assign F2 = w5 | w6;
endmodule 