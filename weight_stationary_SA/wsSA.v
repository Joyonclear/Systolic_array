module wsPE(
  input         clock,
  input         io_i_loading,
  input  [7:0]  io_i_feature,
  input  [7:0]  io_i_weight,
  input  [15:0] io_i_sum,
  output [7:0]  io_o_feature,
  output [7:0]  io_o_weight,
  output [15:0] io_o_sum
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] r_weight; // @[wsPE.scala 18:22]
  reg [7:0] r_feature; // @[wsPE.scala 19:22]
  reg [15:0] r_mac; // @[wsPE.scala 20:22]
  wire [15:0] _r_mac_T = $signed(io_i_feature) * $signed(r_weight); // @[wsPE.scala 29:33]
  assign io_o_feature = r_feature; // @[wsPE.scala 31:16]
  assign io_o_weight = r_weight; // @[wsPE.scala 32:16]
  assign io_o_sum = r_mac; // @[wsPE.scala 33:16]
  always @(posedge clock) begin
    if (io_i_loading) begin // @[wsPE.scala 22:34]
      r_weight <= io_i_weight; // @[wsPE.scala 23:14]
    end
    r_feature <= io_i_feature; // @[wsPE.scala 28:16]
    r_mac <= $signed(_r_mac_T) + $signed(io_i_sum); // @[wsPE.scala 29:45]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  r_weight = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  r_feature = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  r_mac = _RAND_2[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module wsSA(
  input         clock,
  input         reset,
  input         io_i_loading,
  input  [7:0]  io_i_feature_0,
  input  [7:0]  io_i_feature_1,
  input  [7:0]  io_i_feature_2,
  input  [7:0]  io_i_feature_3,
  input  [7:0]  io_i_feature_4,
  input  [7:0]  io_i_weight_0,
  input  [7:0]  io_i_weight_1,
  input  [7:0]  io_i_weight_2,
  input  [7:0]  io_i_weight_3,
  input  [7:0]  io_i_weight_4,
  output [15:0] io_o_result_0,
  output [15:0] io_o_result_1,
  output [15:0] io_o_result_2,
  output [15:0] io_o_result_3,
  output [15:0] io_o_result_4
);
  wire  sys_arr_0_0_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_0_0_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_0_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_0_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_0_0_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_0_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_0_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_0_0_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_0_1_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_0_1_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_1_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_1_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_0_1_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_1_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_1_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_0_1_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_0_2_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_0_2_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_2_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_2_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_0_2_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_2_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_2_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_0_2_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_0_3_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_0_3_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_3_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_3_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_0_3_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_3_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_3_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_0_3_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_0_4_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_0_4_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_4_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_4_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_0_4_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_4_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_0_4_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_0_4_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_1_0_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_1_0_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_0_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_0_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_1_0_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_0_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_0_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_1_0_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_1_1_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_1_1_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_1_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_1_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_1_1_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_1_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_1_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_1_1_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_1_2_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_1_2_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_2_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_2_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_1_2_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_2_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_2_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_1_2_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_1_3_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_1_3_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_3_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_3_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_1_3_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_3_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_3_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_1_3_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_1_4_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_1_4_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_4_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_4_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_1_4_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_4_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_1_4_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_1_4_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_2_0_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_2_0_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_0_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_0_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_2_0_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_0_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_0_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_2_0_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_2_1_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_2_1_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_1_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_1_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_2_1_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_1_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_1_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_2_1_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_2_2_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_2_2_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_2_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_2_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_2_2_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_2_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_2_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_2_2_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_2_3_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_2_3_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_3_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_3_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_2_3_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_3_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_3_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_2_3_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_2_4_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_2_4_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_4_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_4_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_2_4_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_4_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_2_4_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_2_4_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_3_0_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_3_0_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_0_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_0_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_3_0_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_0_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_0_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_3_0_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_3_1_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_3_1_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_1_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_1_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_3_1_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_1_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_1_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_3_1_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_3_2_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_3_2_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_2_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_2_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_3_2_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_2_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_2_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_3_2_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_3_3_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_3_3_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_3_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_3_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_3_3_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_3_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_3_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_3_3_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_3_4_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_3_4_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_4_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_4_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_3_4_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_4_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_3_4_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_3_4_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_4_0_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_4_0_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_0_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_0_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_4_0_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_0_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_0_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_4_0_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_4_1_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_4_1_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_1_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_1_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_4_1_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_1_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_1_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_4_1_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_4_2_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_4_2_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_2_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_2_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_4_2_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_2_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_2_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_4_2_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_4_3_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_4_3_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_3_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_3_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_4_3_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_3_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_3_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_4_3_io_o_sum; // @[wsSA.scala 16:57]
  wire  sys_arr_4_4_clock; // @[wsSA.scala 16:57]
  wire  sys_arr_4_4_io_i_loading; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_4_io_i_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_4_io_i_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_4_4_io_i_sum; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_4_io_o_feature; // @[wsSA.scala 16:57]
  wire [7:0] sys_arr_4_4_io_o_weight; // @[wsSA.scala 16:57]
  wire [15:0] sys_arr_4_4_io_o_sum; // @[wsSA.scala 16:57]
  wsPE sys_arr_0_0 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_0_0_clock),
    .io_i_loading(sys_arr_0_0_io_i_loading),
    .io_i_feature(sys_arr_0_0_io_i_feature),
    .io_i_weight(sys_arr_0_0_io_i_weight),
    .io_i_sum(sys_arr_0_0_io_i_sum),
    .io_o_feature(sys_arr_0_0_io_o_feature),
    .io_o_weight(sys_arr_0_0_io_o_weight),
    .io_o_sum(sys_arr_0_0_io_o_sum)
  );
  wsPE sys_arr_0_1 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_0_1_clock),
    .io_i_loading(sys_arr_0_1_io_i_loading),
    .io_i_feature(sys_arr_0_1_io_i_feature),
    .io_i_weight(sys_arr_0_1_io_i_weight),
    .io_i_sum(sys_arr_0_1_io_i_sum),
    .io_o_feature(sys_arr_0_1_io_o_feature),
    .io_o_weight(sys_arr_0_1_io_o_weight),
    .io_o_sum(sys_arr_0_1_io_o_sum)
  );
  wsPE sys_arr_0_2 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_0_2_clock),
    .io_i_loading(sys_arr_0_2_io_i_loading),
    .io_i_feature(sys_arr_0_2_io_i_feature),
    .io_i_weight(sys_arr_0_2_io_i_weight),
    .io_i_sum(sys_arr_0_2_io_i_sum),
    .io_o_feature(sys_arr_0_2_io_o_feature),
    .io_o_weight(sys_arr_0_2_io_o_weight),
    .io_o_sum(sys_arr_0_2_io_o_sum)
  );
  wsPE sys_arr_0_3 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_0_3_clock),
    .io_i_loading(sys_arr_0_3_io_i_loading),
    .io_i_feature(sys_arr_0_3_io_i_feature),
    .io_i_weight(sys_arr_0_3_io_i_weight),
    .io_i_sum(sys_arr_0_3_io_i_sum),
    .io_o_feature(sys_arr_0_3_io_o_feature),
    .io_o_weight(sys_arr_0_3_io_o_weight),
    .io_o_sum(sys_arr_0_3_io_o_sum)
  );
  wsPE sys_arr_0_4 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_0_4_clock),
    .io_i_loading(sys_arr_0_4_io_i_loading),
    .io_i_feature(sys_arr_0_4_io_i_feature),
    .io_i_weight(sys_arr_0_4_io_i_weight),
    .io_i_sum(sys_arr_0_4_io_i_sum),
    .io_o_feature(sys_arr_0_4_io_o_feature),
    .io_o_weight(sys_arr_0_4_io_o_weight),
    .io_o_sum(sys_arr_0_4_io_o_sum)
  );
  wsPE sys_arr_1_0 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_1_0_clock),
    .io_i_loading(sys_arr_1_0_io_i_loading),
    .io_i_feature(sys_arr_1_0_io_i_feature),
    .io_i_weight(sys_arr_1_0_io_i_weight),
    .io_i_sum(sys_arr_1_0_io_i_sum),
    .io_o_feature(sys_arr_1_0_io_o_feature),
    .io_o_weight(sys_arr_1_0_io_o_weight),
    .io_o_sum(sys_arr_1_0_io_o_sum)
  );
  wsPE sys_arr_1_1 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_1_1_clock),
    .io_i_loading(sys_arr_1_1_io_i_loading),
    .io_i_feature(sys_arr_1_1_io_i_feature),
    .io_i_weight(sys_arr_1_1_io_i_weight),
    .io_i_sum(sys_arr_1_1_io_i_sum),
    .io_o_feature(sys_arr_1_1_io_o_feature),
    .io_o_weight(sys_arr_1_1_io_o_weight),
    .io_o_sum(sys_arr_1_1_io_o_sum)
  );
  wsPE sys_arr_1_2 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_1_2_clock),
    .io_i_loading(sys_arr_1_2_io_i_loading),
    .io_i_feature(sys_arr_1_2_io_i_feature),
    .io_i_weight(sys_arr_1_2_io_i_weight),
    .io_i_sum(sys_arr_1_2_io_i_sum),
    .io_o_feature(sys_arr_1_2_io_o_feature),
    .io_o_weight(sys_arr_1_2_io_o_weight),
    .io_o_sum(sys_arr_1_2_io_o_sum)
  );
  wsPE sys_arr_1_3 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_1_3_clock),
    .io_i_loading(sys_arr_1_3_io_i_loading),
    .io_i_feature(sys_arr_1_3_io_i_feature),
    .io_i_weight(sys_arr_1_3_io_i_weight),
    .io_i_sum(sys_arr_1_3_io_i_sum),
    .io_o_feature(sys_arr_1_3_io_o_feature),
    .io_o_weight(sys_arr_1_3_io_o_weight),
    .io_o_sum(sys_arr_1_3_io_o_sum)
  );
  wsPE sys_arr_1_4 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_1_4_clock),
    .io_i_loading(sys_arr_1_4_io_i_loading),
    .io_i_feature(sys_arr_1_4_io_i_feature),
    .io_i_weight(sys_arr_1_4_io_i_weight),
    .io_i_sum(sys_arr_1_4_io_i_sum),
    .io_o_feature(sys_arr_1_4_io_o_feature),
    .io_o_weight(sys_arr_1_4_io_o_weight),
    .io_o_sum(sys_arr_1_4_io_o_sum)
  );
  wsPE sys_arr_2_0 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_2_0_clock),
    .io_i_loading(sys_arr_2_0_io_i_loading),
    .io_i_feature(sys_arr_2_0_io_i_feature),
    .io_i_weight(sys_arr_2_0_io_i_weight),
    .io_i_sum(sys_arr_2_0_io_i_sum),
    .io_o_feature(sys_arr_2_0_io_o_feature),
    .io_o_weight(sys_arr_2_0_io_o_weight),
    .io_o_sum(sys_arr_2_0_io_o_sum)
  );
  wsPE sys_arr_2_1 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_2_1_clock),
    .io_i_loading(sys_arr_2_1_io_i_loading),
    .io_i_feature(sys_arr_2_1_io_i_feature),
    .io_i_weight(sys_arr_2_1_io_i_weight),
    .io_i_sum(sys_arr_2_1_io_i_sum),
    .io_o_feature(sys_arr_2_1_io_o_feature),
    .io_o_weight(sys_arr_2_1_io_o_weight),
    .io_o_sum(sys_arr_2_1_io_o_sum)
  );
  wsPE sys_arr_2_2 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_2_2_clock),
    .io_i_loading(sys_arr_2_2_io_i_loading),
    .io_i_feature(sys_arr_2_2_io_i_feature),
    .io_i_weight(sys_arr_2_2_io_i_weight),
    .io_i_sum(sys_arr_2_2_io_i_sum),
    .io_o_feature(sys_arr_2_2_io_o_feature),
    .io_o_weight(sys_arr_2_2_io_o_weight),
    .io_o_sum(sys_arr_2_2_io_o_sum)
  );
  wsPE sys_arr_2_3 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_2_3_clock),
    .io_i_loading(sys_arr_2_3_io_i_loading),
    .io_i_feature(sys_arr_2_3_io_i_feature),
    .io_i_weight(sys_arr_2_3_io_i_weight),
    .io_i_sum(sys_arr_2_3_io_i_sum),
    .io_o_feature(sys_arr_2_3_io_o_feature),
    .io_o_weight(sys_arr_2_3_io_o_weight),
    .io_o_sum(sys_arr_2_3_io_o_sum)
  );
  wsPE sys_arr_2_4 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_2_4_clock),
    .io_i_loading(sys_arr_2_4_io_i_loading),
    .io_i_feature(sys_arr_2_4_io_i_feature),
    .io_i_weight(sys_arr_2_4_io_i_weight),
    .io_i_sum(sys_arr_2_4_io_i_sum),
    .io_o_feature(sys_arr_2_4_io_o_feature),
    .io_o_weight(sys_arr_2_4_io_o_weight),
    .io_o_sum(sys_arr_2_4_io_o_sum)
  );
  wsPE sys_arr_3_0 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_3_0_clock),
    .io_i_loading(sys_arr_3_0_io_i_loading),
    .io_i_feature(sys_arr_3_0_io_i_feature),
    .io_i_weight(sys_arr_3_0_io_i_weight),
    .io_i_sum(sys_arr_3_0_io_i_sum),
    .io_o_feature(sys_arr_3_0_io_o_feature),
    .io_o_weight(sys_arr_3_0_io_o_weight),
    .io_o_sum(sys_arr_3_0_io_o_sum)
  );
  wsPE sys_arr_3_1 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_3_1_clock),
    .io_i_loading(sys_arr_3_1_io_i_loading),
    .io_i_feature(sys_arr_3_1_io_i_feature),
    .io_i_weight(sys_arr_3_1_io_i_weight),
    .io_i_sum(sys_arr_3_1_io_i_sum),
    .io_o_feature(sys_arr_3_1_io_o_feature),
    .io_o_weight(sys_arr_3_1_io_o_weight),
    .io_o_sum(sys_arr_3_1_io_o_sum)
  );
  wsPE sys_arr_3_2 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_3_2_clock),
    .io_i_loading(sys_arr_3_2_io_i_loading),
    .io_i_feature(sys_arr_3_2_io_i_feature),
    .io_i_weight(sys_arr_3_2_io_i_weight),
    .io_i_sum(sys_arr_3_2_io_i_sum),
    .io_o_feature(sys_arr_3_2_io_o_feature),
    .io_o_weight(sys_arr_3_2_io_o_weight),
    .io_o_sum(sys_arr_3_2_io_o_sum)
  );
  wsPE sys_arr_3_3 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_3_3_clock),
    .io_i_loading(sys_arr_3_3_io_i_loading),
    .io_i_feature(sys_arr_3_3_io_i_feature),
    .io_i_weight(sys_arr_3_3_io_i_weight),
    .io_i_sum(sys_arr_3_3_io_i_sum),
    .io_o_feature(sys_arr_3_3_io_o_feature),
    .io_o_weight(sys_arr_3_3_io_o_weight),
    .io_o_sum(sys_arr_3_3_io_o_sum)
  );
  wsPE sys_arr_3_4 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_3_4_clock),
    .io_i_loading(sys_arr_3_4_io_i_loading),
    .io_i_feature(sys_arr_3_4_io_i_feature),
    .io_i_weight(sys_arr_3_4_io_i_weight),
    .io_i_sum(sys_arr_3_4_io_i_sum),
    .io_o_feature(sys_arr_3_4_io_o_feature),
    .io_o_weight(sys_arr_3_4_io_o_weight),
    .io_o_sum(sys_arr_3_4_io_o_sum)
  );
  wsPE sys_arr_4_0 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_4_0_clock),
    .io_i_loading(sys_arr_4_0_io_i_loading),
    .io_i_feature(sys_arr_4_0_io_i_feature),
    .io_i_weight(sys_arr_4_0_io_i_weight),
    .io_i_sum(sys_arr_4_0_io_i_sum),
    .io_o_feature(sys_arr_4_0_io_o_feature),
    .io_o_weight(sys_arr_4_0_io_o_weight),
    .io_o_sum(sys_arr_4_0_io_o_sum)
  );
  wsPE sys_arr_4_1 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_4_1_clock),
    .io_i_loading(sys_arr_4_1_io_i_loading),
    .io_i_feature(sys_arr_4_1_io_i_feature),
    .io_i_weight(sys_arr_4_1_io_i_weight),
    .io_i_sum(sys_arr_4_1_io_i_sum),
    .io_o_feature(sys_arr_4_1_io_o_feature),
    .io_o_weight(sys_arr_4_1_io_o_weight),
    .io_o_sum(sys_arr_4_1_io_o_sum)
  );
  wsPE sys_arr_4_2 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_4_2_clock),
    .io_i_loading(sys_arr_4_2_io_i_loading),
    .io_i_feature(sys_arr_4_2_io_i_feature),
    .io_i_weight(sys_arr_4_2_io_i_weight),
    .io_i_sum(sys_arr_4_2_io_i_sum),
    .io_o_feature(sys_arr_4_2_io_o_feature),
    .io_o_weight(sys_arr_4_2_io_o_weight),
    .io_o_sum(sys_arr_4_2_io_o_sum)
  );
  wsPE sys_arr_4_3 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_4_3_clock),
    .io_i_loading(sys_arr_4_3_io_i_loading),
    .io_i_feature(sys_arr_4_3_io_i_feature),
    .io_i_weight(sys_arr_4_3_io_i_weight),
    .io_i_sum(sys_arr_4_3_io_i_sum),
    .io_o_feature(sys_arr_4_3_io_o_feature),
    .io_o_weight(sys_arr_4_3_io_o_weight),
    .io_o_sum(sys_arr_4_3_io_o_sum)
  );
  wsPE sys_arr_4_4 ( // @[wsSA.scala 16:57]
    .clock(sys_arr_4_4_clock),
    .io_i_loading(sys_arr_4_4_io_i_loading),
    .io_i_feature(sys_arr_4_4_io_i_feature),
    .io_i_weight(sys_arr_4_4_io_i_weight),
    .io_i_sum(sys_arr_4_4_io_i_sum),
    .io_o_feature(sys_arr_4_4_io_o_feature),
    .io_o_weight(sys_arr_4_4_io_o_weight),
    .io_o_sum(sys_arr_4_4_io_o_sum)
  );
  assign io_o_result_0 = sys_arr_4_0_io_o_sum; // @[wsSA.scala 34:20]
  assign io_o_result_1 = sys_arr_4_1_io_o_sum; // @[wsSA.scala 34:20]
  assign io_o_result_2 = sys_arr_4_2_io_o_sum; // @[wsSA.scala 34:20]
  assign io_o_result_3 = sys_arr_4_3_io_o_sum; // @[wsSA.scala 34:20]
  assign io_o_result_4 = sys_arr_4_4_io_o_sum; // @[wsSA.scala 34:20]
  assign sys_arr_0_0_clock = clock;
  assign sys_arr_0_0_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_0_0_io_i_feature = io_i_feature_0; // @[wsSA.scala 30:36]
  assign sys_arr_0_0_io_i_weight = io_i_weight_0; // @[wsSA.scala 22:40]
  assign sys_arr_0_0_io_i_sum = 16'sh0; // @[wsSA.scala 23:40]
  assign sys_arr_0_1_clock = clock;
  assign sys_arr_0_1_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_0_1_io_i_feature = sys_arr_0_0_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_0_1_io_i_weight = io_i_weight_1; // @[wsSA.scala 22:40]
  assign sys_arr_0_1_io_i_sum = 16'sh0; // @[wsSA.scala 23:40]
  assign sys_arr_0_2_clock = clock;
  assign sys_arr_0_2_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_0_2_io_i_feature = sys_arr_0_1_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_0_2_io_i_weight = io_i_weight_2; // @[wsSA.scala 22:40]
  assign sys_arr_0_2_io_i_sum = 16'sh0; // @[wsSA.scala 23:40]
  assign sys_arr_0_3_clock = clock;
  assign sys_arr_0_3_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_0_3_io_i_feature = sys_arr_0_2_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_0_3_io_i_weight = io_i_weight_3; // @[wsSA.scala 22:40]
  assign sys_arr_0_3_io_i_sum = 16'sh0; // @[wsSA.scala 23:40]
  assign sys_arr_0_4_clock = clock;
  assign sys_arr_0_4_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_0_4_io_i_feature = sys_arr_0_3_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_0_4_io_i_weight = io_i_weight_4; // @[wsSA.scala 22:40]
  assign sys_arr_0_4_io_i_sum = 16'sh0; // @[wsSA.scala 23:40]
  assign sys_arr_1_0_clock = clock;
  assign sys_arr_1_0_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_1_0_io_i_feature = io_i_feature_1; // @[wsSA.scala 30:36]
  assign sys_arr_1_0_io_i_weight = sys_arr_0_0_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_1_0_io_i_sum = sys_arr_0_0_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_1_1_clock = clock;
  assign sys_arr_1_1_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_1_1_io_i_feature = sys_arr_1_0_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_1_1_io_i_weight = sys_arr_0_1_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_1_1_io_i_sum = sys_arr_0_1_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_1_2_clock = clock;
  assign sys_arr_1_2_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_1_2_io_i_feature = sys_arr_1_1_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_1_2_io_i_weight = sys_arr_0_2_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_1_2_io_i_sum = sys_arr_0_2_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_1_3_clock = clock;
  assign sys_arr_1_3_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_1_3_io_i_feature = sys_arr_1_2_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_1_3_io_i_weight = sys_arr_0_3_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_1_3_io_i_sum = sys_arr_0_3_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_1_4_clock = clock;
  assign sys_arr_1_4_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_1_4_io_i_feature = sys_arr_1_3_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_1_4_io_i_weight = sys_arr_0_4_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_1_4_io_i_sum = sys_arr_0_4_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_2_0_clock = clock;
  assign sys_arr_2_0_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_2_0_io_i_feature = io_i_feature_2; // @[wsSA.scala 30:36]
  assign sys_arr_2_0_io_i_weight = sys_arr_1_0_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_2_0_io_i_sum = sys_arr_1_0_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_2_1_clock = clock;
  assign sys_arr_2_1_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_2_1_io_i_feature = sys_arr_2_0_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_2_1_io_i_weight = sys_arr_1_1_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_2_1_io_i_sum = sys_arr_1_1_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_2_2_clock = clock;
  assign sys_arr_2_2_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_2_2_io_i_feature = sys_arr_2_1_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_2_2_io_i_weight = sys_arr_1_2_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_2_2_io_i_sum = sys_arr_1_2_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_2_3_clock = clock;
  assign sys_arr_2_3_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_2_3_io_i_feature = sys_arr_2_2_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_2_3_io_i_weight = sys_arr_1_3_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_2_3_io_i_sum = sys_arr_1_3_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_2_4_clock = clock;
  assign sys_arr_2_4_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_2_4_io_i_feature = sys_arr_2_3_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_2_4_io_i_weight = sys_arr_1_4_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_2_4_io_i_sum = sys_arr_1_4_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_3_0_clock = clock;
  assign sys_arr_3_0_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_3_0_io_i_feature = io_i_feature_3; // @[wsSA.scala 30:36]
  assign sys_arr_3_0_io_i_weight = sys_arr_2_0_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_3_0_io_i_sum = sys_arr_2_0_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_3_1_clock = clock;
  assign sys_arr_3_1_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_3_1_io_i_feature = sys_arr_3_0_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_3_1_io_i_weight = sys_arr_2_1_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_3_1_io_i_sum = sys_arr_2_1_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_3_2_clock = clock;
  assign sys_arr_3_2_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_3_2_io_i_feature = sys_arr_3_1_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_3_2_io_i_weight = sys_arr_2_2_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_3_2_io_i_sum = sys_arr_2_2_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_3_3_clock = clock;
  assign sys_arr_3_3_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_3_3_io_i_feature = sys_arr_3_2_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_3_3_io_i_weight = sys_arr_2_3_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_3_3_io_i_sum = sys_arr_2_3_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_3_4_clock = clock;
  assign sys_arr_3_4_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_3_4_io_i_feature = sys_arr_3_3_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_3_4_io_i_weight = sys_arr_2_4_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_3_4_io_i_sum = sys_arr_2_4_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_4_0_clock = clock;
  assign sys_arr_4_0_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_4_0_io_i_feature = io_i_feature_4; // @[wsSA.scala 30:36]
  assign sys_arr_4_0_io_i_weight = sys_arr_3_0_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_4_0_io_i_sum = sys_arr_3_0_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_4_1_clock = clock;
  assign sys_arr_4_1_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_4_1_io_i_feature = sys_arr_4_0_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_4_1_io_i_weight = sys_arr_3_1_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_4_1_io_i_sum = sys_arr_3_1_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_4_2_clock = clock;
  assign sys_arr_4_2_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_4_2_io_i_feature = sys_arr_4_1_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_4_2_io_i_weight = sys_arr_3_2_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_4_2_io_i_sum = sys_arr_3_2_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_4_3_clock = clock;
  assign sys_arr_4_3_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_4_3_io_i_feature = sys_arr_4_2_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_4_3_io_i_weight = sys_arr_3_3_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_4_3_io_i_sum = sys_arr_3_3_io_o_sum; // @[wsSA.scala 27:40]
  assign sys_arr_4_4_clock = clock;
  assign sys_arr_4_4_io_i_loading = io_i_loading; // @[wsSA.scala 20:44]
  assign sys_arr_4_4_io_i_feature = sys_arr_4_3_io_o_feature; // @[wsSA.scala 32:40]
  assign sys_arr_4_4_io_i_weight = sys_arr_3_4_io_o_weight; // @[wsSA.scala 26:40]
  assign sys_arr_4_4_io_i_sum = sys_arr_3_4_io_o_sum; // @[wsSA.scala 27:40]
endmodule
