module twos_compliment(
input [7:0] i
//output [7:0] o, [7:0] Y
);

wire [7:0] o, [7:0] Y;

assign o[0] = -i[0];
assign o[1] = -i[1];
assign o[2] = -i[2];
assign o[3] = -i[3];
assign o[4] = -i[4];
assign o[5] = -i[5];
assign o[6] = -i[6];
assign o[7] = -i[7];


wire [6:0] carry;

//assign notNum = ~num; // Invert bits

full_adder fa0_inst (
.A(o[0]),
.B(1),
.C(0),
.Y(Y[0]),
.cout(carry[0])
);

full_adder fa1_inst (
.A(o[1]),
.B(0),
.C(carry[0]),
.Y(Y[1]),
.cout(carry[1])
);

full_adder fa2_inst (
.A(o[2]),
.B(0),
.C(carry[1]),
.Y(Y[2]),
.cout(carry[2])
);

full_adder fa3_inst (
.A(o[3]),
.B(0),
.C(carry[2]),
.Y(Y[3]),
.cout(carry[3])
);

full_adder fa4_inst (
.A(o[4]),
.B(1),
.C(carry[3]),
.Y(Y[4]),
.cout(carry[4])
);

full_adder fa5_inst (
.A(o[5]),
.B(0),
.C(carry[4]),
.Y(Y[5]),
.cout(carry[5])
);

full_adder fa6_inst (
.A(o[6]),
.B(0),
.C(carry[5]),
.Y(Y[6]),
.cout(carry[6])
);

full_adder fa7_inst (
.A(o[7]),
.B(0),
.C(carry[6]),
.Y(Y[07]),
.count(carry[0])
);

endmodule