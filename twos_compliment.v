module twos_compliment(
    input [7:0]A,
    output [7:0]Y
);

    wire inversion[7:0];
    
    assign inversion[0] = ~A[0];
    assign inversion[1] = ~A[1];
    assign inversion[2] = ~A[2];
    assign inversion[3] = ~A[3];
    assign inversion[4] = ~A[4];
    assign inversion[5] = ~A[5];
    assign inversion[6] = ~A[6];
    assign inversion[7] = ~A[7];

    full_adder bit0(
        .A(inversion[0]),
        .B(1),
        .Cin(0),
        .Y(Y[0])
    );
    
    full_adder bit1(
        .A(inversion[1]),
        .B(0),
        .Cin(bit0.Cout),
        .Y(Y[1])
    );
    
    full_adder bit2(
        .A(inversion[2]),
        .B(0),
        .Cin(bit1.Cout),
        .Y(Y[2])
    );
    
    full_adder bit3(
        .A(inversion[3]),
        .B(0),
        .Cin(bit2.Cout),
        .Y(Y[3])
    );
    
    full_adder bit4(
        .A(inversion[4]),
        .B(0),
        .Cin(bit3.Cout),
        .Y(Y[4])
    );
    
    full_adder bit5(
        .A(inversion[5]),
        .B(0),
        .Cin(bit4.Cout),
        .Y(Y[5])
    );
    
    full_adder bit6(
        .A(inversion[6]),
        .B(0),
        .Cin(bit5.Cout),
        .Y(Y[6])
    );
    
    full_adder bit7(
        .A(inversion[7]),
        .B(0),
        .Cin(bit6.Cout),
        .Y(Y[7])
    );
    
endmodule

