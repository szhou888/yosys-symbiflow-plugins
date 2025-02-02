`ifndef NO_LUT
module \$lut (A, Y);
    parameter WIDTH = 0;
    parameter LUT = 0;

    (* force_downto *)
    input [WIDTH-1:0] A;
    output Y;

    generate
	    if (WIDTH == 6) begin
	       frac_lut6 #(.LUT(LUT)) _TECHMAP_REPLACE_ (.lut6_out(Y),.in(A));

	    end else begin
	       wire _TECHMAP_FAIL_ = 1;
	    end
    endgenerate

endmodule
`endif



