module ckt3 (
    input logic [3:0] a, b,
    input logic cin,
    output logic [3:0] s,
    output logic cout
);
    logic c1, c2, c3;
    fulladder fa0 (.a(a[0]), .b(b[0]), .ci(cin), .s(s[0]), .co(c1));
    fulladder fa1 (.a(a[1]), .b(b[1]), .ci(c1), .s(s[1]), .co(c2));
    fulladder fa2 (.a(a[2]), .b(b[2]), .ci(c2), .s(s[2]), .co(c3));
    fulladder fa3 (.a(a[3]), .b(b[3]), .ci(c3), .s(s[3]), .co(cout));
endmodule