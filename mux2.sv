// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

// Put your code here
// ------------------
    logic l1;
    logic l2;
    logic notl1;
    logic notl2;
    logic notsel;
    // Instantiate gates
    NAND2 u0 (.A(sel), .B(sel), .Z(notsel));
    NAND2 u1 (.A(d1), .B(sel), .Z(l1));
    NAND2 u2 (.A(d0), .B(notsel), .Z(l2)); 
    NAND2 u3 (.A(l1), .B(l1), .Z(notl1));
    NAND2 u4 (.A(l2), .B(l2), .Z(notl2));
    OR2 u5 (.A(notl1), .B(notl2), .Z(z));

// End of your code

endmodule
