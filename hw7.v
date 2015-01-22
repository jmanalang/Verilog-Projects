// Name: Jules Manalang
// ID: 50010031
// email: julesman@buffalo.edu

module hw7_circuit_Problem_4_49 (A,B,C,D,f1,f2);
	input A,B,C,D;
	output f1,f2;
	wire t1, t2, t3 ,t4, nota, notb, notd;
	not g1(notb, B);
	and g2(t1, c, notb);
	not g3(nota, A);
	and g4(t2, nota, C);
	or g5 (t3, t1, A);
	xor g6 (t4, t2, D);
	not g7 (notd, D);
	or g8 (f2, notd, t2);
	or g9 (f1, t3,t4);
endmodule
	


module hw_7_circuit_Problem_4_42_a (A,B,C,D, f1,f2,f3,f4);
	input A,B,C,D;
	output f1,f2,f3,f4;
	wire t1,t2,t3,t4,t5,t6,t7;
	and a1(t1,C,D);
	and a2(t5,t2,B);
	and a3(t6,t4,t3);
	and a4(t7,t4,B);
	or r1(t4,C,D);
	or r2(f3,t1,t2);
	or r3(f2,t5,t6);
	or r4(f1,t7,A);
	not n1(f4,D);
	not n2(t3,B);
	not n3(t2,t4);
endmodule





module hw_7_circuit_Problem_4_42_c (input,output)
	input [3:0]input;
	output [3:0]output;
	reg [3:0]out;
	always @ (input)
	begin
	out=inp+4'b0011;
	end
endmodule



