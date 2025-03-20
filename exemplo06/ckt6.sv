module ckt6 (
    input logic j, k, clk,
    output logic q
);
    always @(posedge clk) begin
        case ({j,k})
            2'b00: q = q;
            2'b01: q = 1'b0;
            2'b10: q = 1'b1;
            default: q = ~q;
        endcase
    end
endmodule