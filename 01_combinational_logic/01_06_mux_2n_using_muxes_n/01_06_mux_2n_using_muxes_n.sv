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
 
  // Task: 
  // Implement mux_4_1 using three instances of mux_2_1 
  wire [7:0] a;
  
  mux_2_1 mux_01(
    .d0 (d0),
    .d1 (d1),
    .sel (sel[0]), //Проверяем младший разряд, чтобы выбрать или четное, или нечетное число 
    .y (a[3:0])
  );

  mux_2_1 mux_23(
    .d0 (d2),
    .d1 (d3),
    .sel (sel[0]),
    .y (a[7:4])
  );

  mux_2_1 mux_03(
    .d0 (a[3:0]),
    .d1(a[7:4]),
    .sel (sel[1]),
    .y (y[3:0])
  );
 
endmodule