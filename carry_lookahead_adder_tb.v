module carry_lookahead_adder_tb;
    reg [3:0] A, B;       
    reg Cin;              
    wire [3:0] Sum;       
    wire Cout;           
    carry_lookahead_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );
    initial begin
        A = 4'b0000; B = 4'b0000; Cin = 0;
        $monitor("Time=%0t | A=%b, B=%b, Cin=%b | Sum=%b, Cout=%b",
                 $time, A, B, Cin, Sum, Cout);
        #10 A = 4'b1010; B = 4'b0101; Cin = 0;
        #10 A = 4'b1101; B = 4'b1111; Cin = 0;
        #10 A = 4'b0011; B = 4'b1100; Cin = 1;
        #10 A = 4'b0101; B = 4'b0001; Cin = 1;
        #10 $finish;
    end
endmodule
