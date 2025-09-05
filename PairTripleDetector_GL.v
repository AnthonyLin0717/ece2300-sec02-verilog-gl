//========================================================================
// PairTripleDetector_GL
//========================================================================

`ifndef PAIR_TRIPLE_DETECTOR_GL_V
`define PAIR_TRIPLE_DETECTOR_GL_V

`include "ece2300-misc.v"

module PairTripleDetector_GL
(
  input  wire in0,
  input  wire in1,
  input  wire in2,
  output wire out
 );

 wire w;
 wire x;
 wire y;

 or( w, in0, in1);
 and( x, in0, in1);
 or( out, y, x);
 and( y, w, in2);

  //''' ACTIVITY '''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  // Implement pair/triple detector using explicit gate-level modeling
  //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

  task test_case_1_extensive();
    t.test_case_begin( "test_case_1_extensive" );

    //     in0 in1 in2 out
    check( 0, 0, 0, 0 );
    check( 0, 0, 1, 0 );
    check( 0, 1, 0, 0 );
    check( 0, 1, 1, 1 );
    check( 1, 0, 0, 0 );
    check( 1, 0, 1, 1 );
    check( 1, 1, 0, 1 );
    check( 1, 1, 1, 1 );



    t.test_case_end();
  endtask


  
  `ECE2300_UNUSED( in0 );
  `ECE2300_UNUSED( in1 );
  `ECE2300_UNUSED( in2 );
  `ECE2300_UNDRIVEN( out );

endmodule

`endif /* PAIR_TRIPLE_DETECTOR_GL_V */

