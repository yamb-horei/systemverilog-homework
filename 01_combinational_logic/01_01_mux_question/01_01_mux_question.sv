//----------------------------------------------------------------------------
// Example
//----------------------------------------------------------------------------

module mux_2_1
(
  input  [3:0] d0, d1,
  input        sel,
  output [3:0] y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------
// Task
//----------------------------------------------------------------------------

module mux_4_1
(
  input  [3:0] d0, d1, d2, d3,
  input  [1:0] sel,
  output [3:0] y
);
  //assign y = (sel == 3) ? d1 : ((sel == 2) ? d2 : ((sel == 1) ? d1 : d0));
  assign y = (sel == 3) ? d3 : 
           ((sel == 2) ? d2 : 
           ((sel == 1) ? d1 : d0));
  // Task:
  // Using code for mux_2_1 as an example,
  // write code for 4:1 mux using "?:" operator


endmodule
