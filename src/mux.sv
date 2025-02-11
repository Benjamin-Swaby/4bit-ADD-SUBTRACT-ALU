module MUX_2to1_4 (
    input wire I1[3:0],
    input wire I2[3:0],
    input wire s,

    output wire q[3:0]
);

genvar i;
generate
    for (i = 0; i < 4; i = i + 1) begin
        assign q[i] = s ? I2[i] : I1[i];
    end
endgenerate
    
endmodule


module MUX_2to1_1 (
    input wire I1,
    input wire I2,
    input wire s,

    output wire q
);

assign q = (I1 & s) | (I2 & ~s);


endmodule