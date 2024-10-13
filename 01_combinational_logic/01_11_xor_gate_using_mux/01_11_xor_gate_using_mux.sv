//----------------------------------------------------------------------------
// Example
//----------------------------------------------------------------------------

module mux
(
  input  d0, d1,
  input  sel,
  output y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------
// Task
//----------------------------------------------------------------------------

module xor_gate_using_mux
(
    input  a,
    input  b,
    output o
);

  // Task:
  // Implement xor gate using instance(s) of mux,
  // constants 0 and 1, and wire connections
  wire result_of_xor_or;
  wire result_of_xor_and;
  wire result_of_not_xor_and;

  mux xor_or( //если оба 0, то выдаст 0
    .d0 (b),
    .d1 (1),
    .sel (a), 
    .y (result_of_xor_or)
  );

  mux xor_and( //если оба 1, то выдаст 1
    .d0 (0),
    .d1 (b),
    .sel (a), 
    .y (result_of_xor_and)
  );

  mux not_xor_and( //если оба 1, то выдаст 0
    .d0 (1),
    .d1 (0),
    .sel (result_of_xor_and), 
    .y (result_of_not_xor_and)
  );

  mux xor_all_in( //если оба 1, то выдаст 1
    .d0 (0),
    .d1 (result_of_xor_or),
    .sel (result_of_not_xor_and), 
    .y (o)
  );

endmodule
