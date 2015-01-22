module hw8 (output A,B, input Clock,reset_b);
	or (T_A,A,B);
	or (T_B,A_b,B);
	T_flipflop G0(A,A_b,T_A, Clock,reset_b);
	T_flipflop G1(B, B_b, T_B, Clock, reset_b);
endmodule

module T_flipflop (output reg X, output Y, input T, Clock, reset_b);
	assign Y = ~X;
	always @(posedge Clock, negedge reset_b)
	begin
	if(reset_b == 0) 
		X<= 0;
	else if (T)
		X<= ~X;
	end
endmodule
module t_hw8(); 
	wire A,B;
	reg Clock, reset_b;

	hw8 G0 (a,b,Clock,reset_b);	
	initial #100$finish;
	initial begin
		$monitor("Clock %d reset_b: %d  A: %d  B:  %d", Clock, reset_b, A, B);
		$dumpfile ("xyz_wv.vcd"); 
		$dumpvars;
		Clock = 0; 
		forever #5 Clock = ~Clock;
	end

	initial fork
	#2 reset_b = 1;
	#3 reset_b = 0;
	#4 reset_b = 1;
	join

endmodule
