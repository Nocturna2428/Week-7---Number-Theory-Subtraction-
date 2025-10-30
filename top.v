module top(
input [9:0]sw,
output [13:0]led
);


half_sub hsub_inst(
.A(sw[0]),
.B(sw[1]),
.Y(led[0]),
.Borrow(led[1])
);

ones_compliment ones_comp_inst (
.A(sw[5:2]), .B(sw[9:6]),
.Y(led[5:2])
);

// Second full adder (MSB + carry from LSB)
twos_compliment twos_comp_inst(
.num(sw[9:2]),
.sum(led[13:6])
);


endmodule
