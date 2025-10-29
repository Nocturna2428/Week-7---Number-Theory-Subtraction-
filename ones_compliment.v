module ones_compliment(
        input [3:0] A, [3:0] B,
output [3:0] Y
);

wire [3:0] APlusB;
wire around;


full_adder bit0_ista(
        .A(A[0]),
        .B(B[0]),
        .C(0), // Fix to zero
        .Y(APlusB[0]),
    );
full_adder bit1_inter(
        .A(A[1]),
        .B(B[1]),
        .Cin(bit0_inter.Cout),
        .Y(APlusB[1]),
    );

full_adder bit1_inter(
        .A(A[2]),
        .B(B[2]),
        .Cin(bit1_inter.Cout),
        .Y(APlusB[2]),
    );        

full_adder bit1_inter(
        .A(A[3]),
        .B(B[3]),
        .Cin(bit2_inter.Cout),
        .Y(APlusB[3]),
         .Cout(around)
    );  

full_adder bit0(
        .A(APlusB[0]),
        .B(0),
        .Cin(around),
        .Y(Y[0])
    );
    
full_adder bit1(
        .A(APlusB[1]),
        .B(0),
        .Cin(bit0.Cout),
        .Y(Y[1])
    );
    
full_adder bit2(
        .A(APlusB[2]),
        .B(0),
        .Cin(bit1.Cout),
        .Y(Y[2])
    );
    
full_adder bit3(
        .A(APlusB[3]),
        .B(0),
        .Cin(bit2.Cout),
        .Y(Y[3])
    );
 
   



endmodule
