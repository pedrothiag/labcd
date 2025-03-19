module ckt4 (
    input logic [3:0] a, b,
    input logic cin,
    output logic [3:0] s,
    output logic cout
);
    logic [4:0] s_temp;
    assign s_temp = a + b + {3'b000,cin};
    assign s = s_temp[3:0];
    assign cout = s_temp[4];
endmodule