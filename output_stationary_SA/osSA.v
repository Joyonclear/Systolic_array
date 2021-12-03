module osPE(
  input         clock,
  input  [7:0]  io_i_feature,
  input  [7:0]  io_i_weight,
  output [7:0]  io_o_feature,
  output [7:0]  io_o_weight,
  output [15:0] io_o_sum
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] r_feature; // @[osPE.scala 14:22]
  reg [7:0] r_weight; // @[osPE.scala 15:22]
  reg [15:0] r_mac; // @[osPE.scala 16:22]
  wire [15:0] _r_mac_T = $signed(io_i_feature) * $signed(io_i_weight); // @[osPE.scala 20:41]
  assign io_o_feature = r_feature; // @[osPE.scala 22:16]
  assign io_o_weight = r_weight; // @[osPE.scala 23:16]
  assign io_o_sum = r_mac; // @[osPE.scala 24:16]
  always @(posedge clock) begin
    r_feature <= io_i_feature; // @[osPE.scala 18:16]
    r_weight <= io_i_weight; // @[osPE.scala 19:16]
    r_mac <= $signed(r_mac) + $signed(_r_mac_T); // @[osPE.scala 20:25]
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
  r_feature = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  r_weight = _RAND_1[7:0];
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
module osSA(
  input         clock,
  input         reset,
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
  output [15:0] io_o_result_0_0,
  output [15:0] io_o_result_0_1,
  output [15:0] io_o_result_0_2,
  output [15:0] io_o_result_0_3,
  output [15:0] io_o_result_0_4,
  output [15:0] io_o_result_1_0,
  output [15:0] io_o_result_1_1,
  output [15:0] io_o_result_1_2,
  output [15:0] io_o_result_1_3,
  output [15:0] io_o_result_1_4,
  output [15:0] io_o_result_2_0,
  output [15:0] io_o_result_2_1,
  output [15:0] io_o_result_2_2,
  output [15:0] io_o_result_2_3,
  output [15:0] io_o_result_2_4,
  output [15:0] io_o_result_3_0,
  output [15:0] io_o_result_3_1,
  output [15:0] io_o_result_3_2,
  output [15:0] io_o_result_3_3,
  output [15:0] io_o_result_3_4,
  output [15:0] io_o_result_4_0,
  output [15:0] io_o_result_4_1,
  output [15:0] io_o_result_4_2,
  output [15:0] io_o_result_4_3,
  output [15:0] io_o_result_4_4
);
  wire  sys_arr_0_0_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_0_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_0_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_0_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_0_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_0_0_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_0_1_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_1_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_1_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_1_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_1_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_0_1_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_0_2_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_2_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_2_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_2_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_2_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_0_2_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_0_3_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_3_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_3_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_3_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_3_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_0_3_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_0_4_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_4_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_4_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_4_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_0_4_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_0_4_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_1_0_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_0_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_0_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_0_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_0_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_1_0_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_1_1_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_1_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_1_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_1_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_1_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_1_1_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_1_2_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_2_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_2_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_2_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_2_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_1_2_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_1_3_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_3_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_3_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_3_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_3_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_1_3_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_1_4_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_4_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_4_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_4_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_1_4_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_1_4_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_2_0_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_0_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_0_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_0_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_0_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_2_0_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_2_1_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_1_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_1_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_1_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_1_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_2_1_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_2_2_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_2_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_2_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_2_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_2_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_2_2_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_2_3_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_3_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_3_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_3_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_3_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_2_3_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_2_4_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_4_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_4_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_4_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_2_4_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_2_4_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_3_0_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_0_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_0_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_0_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_0_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_3_0_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_3_1_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_1_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_1_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_1_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_1_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_3_1_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_3_2_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_2_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_2_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_2_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_2_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_3_2_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_3_3_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_3_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_3_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_3_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_3_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_3_3_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_3_4_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_4_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_4_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_4_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_3_4_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_3_4_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_4_0_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_0_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_0_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_0_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_0_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_4_0_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_4_1_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_1_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_1_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_1_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_1_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_4_1_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_4_2_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_2_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_2_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_2_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_2_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_4_2_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_4_3_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_3_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_3_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_3_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_3_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_4_3_io_o_sum; // @[osSA.scala 14:57]
  wire  sys_arr_4_4_clock; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_4_io_i_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_4_io_i_weight; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_4_io_o_feature; // @[osSA.scala 14:57]
  wire [7:0] sys_arr_4_4_io_o_weight; // @[osSA.scala 14:57]
  wire [15:0] sys_arr_4_4_io_o_sum; // @[osSA.scala 14:57]
  osPE sys_arr_0_0 ( // @[osSA.scala 14:57]
    .clock(sys_arr_0_0_clock),
    .io_i_feature(sys_arr_0_0_io_i_feature),
    .io_i_weight(sys_arr_0_0_io_i_weight),
    .io_o_feature(sys_arr_0_0_io_o_feature),
    .io_o_weight(sys_arr_0_0_io_o_weight),
    .io_o_sum(sys_arr_0_0_io_o_sum)
  );
  osPE sys_arr_0_1 ( // @[osSA.scala 14:57]
    .clock(sys_arr_0_1_clock),
    .io_i_feature(sys_arr_0_1_io_i_feature),
    .io_i_weight(sys_arr_0_1_io_i_weight),
    .io_o_feature(sys_arr_0_1_io_o_feature),
    .io_o_weight(sys_arr_0_1_io_o_weight),
    .io_o_sum(sys_arr_0_1_io_o_sum)
  );
  osPE sys_arr_0_2 ( // @[osSA.scala 14:57]
    .clock(sys_arr_0_2_clock),
    .io_i_feature(sys_arr_0_2_io_i_feature),
    .io_i_weight(sys_arr_0_2_io_i_weight),
    .io_o_feature(sys_arr_0_2_io_o_feature),
    .io_o_weight(sys_arr_0_2_io_o_weight),
    .io_o_sum(sys_arr_0_2_io_o_sum)
  );
  osPE sys_arr_0_3 ( // @[osSA.scala 14:57]
    .clock(sys_arr_0_3_clock),
    .io_i_feature(sys_arr_0_3_io_i_feature),
    .io_i_weight(sys_arr_0_3_io_i_weight),
    .io_o_feature(sys_arr_0_3_io_o_feature),
    .io_o_weight(sys_arr_0_3_io_o_weight),
    .io_o_sum(sys_arr_0_3_io_o_sum)
  );
  osPE sys_arr_0_4 ( // @[osSA.scala 14:57]
    .clock(sys_arr_0_4_clock),
    .io_i_feature(sys_arr_0_4_io_i_feature),
    .io_i_weight(sys_arr_0_4_io_i_weight),
    .io_o_feature(sys_arr_0_4_io_o_feature),
    .io_o_weight(sys_arr_0_4_io_o_weight),
    .io_o_sum(sys_arr_0_4_io_o_sum)
  );
  osPE sys_arr_1_0 ( // @[osSA.scala 14:57]
    .clock(sys_arr_1_0_clock),
    .io_i_feature(sys_arr_1_0_io_i_feature),
    .io_i_weight(sys_arr_1_0_io_i_weight),
    .io_o_feature(sys_arr_1_0_io_o_feature),
    .io_o_weight(sys_arr_1_0_io_o_weight),
    .io_o_sum(sys_arr_1_0_io_o_sum)
  );
  osPE sys_arr_1_1 ( // @[osSA.scala 14:57]
    .clock(sys_arr_1_1_clock),
    .io_i_feature(sys_arr_1_1_io_i_feature),
    .io_i_weight(sys_arr_1_1_io_i_weight),
    .io_o_feature(sys_arr_1_1_io_o_feature),
    .io_o_weight(sys_arr_1_1_io_o_weight),
    .io_o_sum(sys_arr_1_1_io_o_sum)
  );
  osPE sys_arr_1_2 ( // @[osSA.scala 14:57]
    .clock(sys_arr_1_2_clock),
    .io_i_feature(sys_arr_1_2_io_i_feature),
    .io_i_weight(sys_arr_1_2_io_i_weight),
    .io_o_feature(sys_arr_1_2_io_o_feature),
    .io_o_weight(sys_arr_1_2_io_o_weight),
    .io_o_sum(sys_arr_1_2_io_o_sum)
  );
  osPE sys_arr_1_3 ( // @[osSA.scala 14:57]
    .clock(sys_arr_1_3_clock),
    .io_i_feature(sys_arr_1_3_io_i_feature),
    .io_i_weight(sys_arr_1_3_io_i_weight),
    .io_o_feature(sys_arr_1_3_io_o_feature),
    .io_o_weight(sys_arr_1_3_io_o_weight),
    .io_o_sum(sys_arr_1_3_io_o_sum)
  );
  osPE sys_arr_1_4 ( // @[osSA.scala 14:57]
    .clock(sys_arr_1_4_clock),
    .io_i_feature(sys_arr_1_4_io_i_feature),
    .io_i_weight(sys_arr_1_4_io_i_weight),
    .io_o_feature(sys_arr_1_4_io_o_feature),
    .io_o_weight(sys_arr_1_4_io_o_weight),
    .io_o_sum(sys_arr_1_4_io_o_sum)
  );
  osPE sys_arr_2_0 ( // @[osSA.scala 14:57]
    .clock(sys_arr_2_0_clock),
    .io_i_feature(sys_arr_2_0_io_i_feature),
    .io_i_weight(sys_arr_2_0_io_i_weight),
    .io_o_feature(sys_arr_2_0_io_o_feature),
    .io_o_weight(sys_arr_2_0_io_o_weight),
    .io_o_sum(sys_arr_2_0_io_o_sum)
  );
  osPE sys_arr_2_1 ( // @[osSA.scala 14:57]
    .clock(sys_arr_2_1_clock),
    .io_i_feature(sys_arr_2_1_io_i_feature),
    .io_i_weight(sys_arr_2_1_io_i_weight),
    .io_o_feature(sys_arr_2_1_io_o_feature),
    .io_o_weight(sys_arr_2_1_io_o_weight),
    .io_o_sum(sys_arr_2_1_io_o_sum)
  );
  osPE sys_arr_2_2 ( // @[osSA.scala 14:57]
    .clock(sys_arr_2_2_clock),
    .io_i_feature(sys_arr_2_2_io_i_feature),
    .io_i_weight(sys_arr_2_2_io_i_weight),
    .io_o_feature(sys_arr_2_2_io_o_feature),
    .io_o_weight(sys_arr_2_2_io_o_weight),
    .io_o_sum(sys_arr_2_2_io_o_sum)
  );
  osPE sys_arr_2_3 ( // @[osSA.scala 14:57]
    .clock(sys_arr_2_3_clock),
    .io_i_feature(sys_arr_2_3_io_i_feature),
    .io_i_weight(sys_arr_2_3_io_i_weight),
    .io_o_feature(sys_arr_2_3_io_o_feature),
    .io_o_weight(sys_arr_2_3_io_o_weight),
    .io_o_sum(sys_arr_2_3_io_o_sum)
  );
  osPE sys_arr_2_4 ( // @[osSA.scala 14:57]
    .clock(sys_arr_2_4_clock),
    .io_i_feature(sys_arr_2_4_io_i_feature),
    .io_i_weight(sys_arr_2_4_io_i_weight),
    .io_o_feature(sys_arr_2_4_io_o_feature),
    .io_o_weight(sys_arr_2_4_io_o_weight),
    .io_o_sum(sys_arr_2_4_io_o_sum)
  );
  osPE sys_arr_3_0 ( // @[osSA.scala 14:57]
    .clock(sys_arr_3_0_clock),
    .io_i_feature(sys_arr_3_0_io_i_feature),
    .io_i_weight(sys_arr_3_0_io_i_weight),
    .io_o_feature(sys_arr_3_0_io_o_feature),
    .io_o_weight(sys_arr_3_0_io_o_weight),
    .io_o_sum(sys_arr_3_0_io_o_sum)
  );
  osPE sys_arr_3_1 ( // @[osSA.scala 14:57]
    .clock(sys_arr_3_1_clock),
    .io_i_feature(sys_arr_3_1_io_i_feature),
    .io_i_weight(sys_arr_3_1_io_i_weight),
    .io_o_feature(sys_arr_3_1_io_o_feature),
    .io_o_weight(sys_arr_3_1_io_o_weight),
    .io_o_sum(sys_arr_3_1_io_o_sum)
  );
  osPE sys_arr_3_2 ( // @[osSA.scala 14:57]
    .clock(sys_arr_3_2_clock),
    .io_i_feature(sys_arr_3_2_io_i_feature),
    .io_i_weight(sys_arr_3_2_io_i_weight),
    .io_o_feature(sys_arr_3_2_io_o_feature),
    .io_o_weight(sys_arr_3_2_io_o_weight),
    .io_o_sum(sys_arr_3_2_io_o_sum)
  );
  osPE sys_arr_3_3 ( // @[osSA.scala 14:57]
    .clock(sys_arr_3_3_clock),
    .io_i_feature(sys_arr_3_3_io_i_feature),
    .io_i_weight(sys_arr_3_3_io_i_weight),
    .io_o_feature(sys_arr_3_3_io_o_feature),
    .io_o_weight(sys_arr_3_3_io_o_weight),
    .io_o_sum(sys_arr_3_3_io_o_sum)
  );
  osPE sys_arr_3_4 ( // @[osSA.scala 14:57]
    .clock(sys_arr_3_4_clock),
    .io_i_feature(sys_arr_3_4_io_i_feature),
    .io_i_weight(sys_arr_3_4_io_i_weight),
    .io_o_feature(sys_arr_3_4_io_o_feature),
    .io_o_weight(sys_arr_3_4_io_o_weight),
    .io_o_sum(sys_arr_3_4_io_o_sum)
  );
  osPE sys_arr_4_0 ( // @[osSA.scala 14:57]
    .clock(sys_arr_4_0_clock),
    .io_i_feature(sys_arr_4_0_io_i_feature),
    .io_i_weight(sys_arr_4_0_io_i_weight),
    .io_o_feature(sys_arr_4_0_io_o_feature),
    .io_o_weight(sys_arr_4_0_io_o_weight),
    .io_o_sum(sys_arr_4_0_io_o_sum)
  );
  osPE sys_arr_4_1 ( // @[osSA.scala 14:57]
    .clock(sys_arr_4_1_clock),
    .io_i_feature(sys_arr_4_1_io_i_feature),
    .io_i_weight(sys_arr_4_1_io_i_weight),
    .io_o_feature(sys_arr_4_1_io_o_feature),
    .io_o_weight(sys_arr_4_1_io_o_weight),
    .io_o_sum(sys_arr_4_1_io_o_sum)
  );
  osPE sys_arr_4_2 ( // @[osSA.scala 14:57]
    .clock(sys_arr_4_2_clock),
    .io_i_feature(sys_arr_4_2_io_i_feature),
    .io_i_weight(sys_arr_4_2_io_i_weight),
    .io_o_feature(sys_arr_4_2_io_o_feature),
    .io_o_weight(sys_arr_4_2_io_o_weight),
    .io_o_sum(sys_arr_4_2_io_o_sum)
  );
  osPE sys_arr_4_3 ( // @[osSA.scala 14:57]
    .clock(sys_arr_4_3_clock),
    .io_i_feature(sys_arr_4_3_io_i_feature),
    .io_i_weight(sys_arr_4_3_io_i_weight),
    .io_o_feature(sys_arr_4_3_io_o_feature),
    .io_o_weight(sys_arr_4_3_io_o_weight),
    .io_o_sum(sys_arr_4_3_io_o_sum)
  );
  osPE sys_arr_4_4 ( // @[osSA.scala 14:57]
    .clock(sys_arr_4_4_clock),
    .io_i_feature(sys_arr_4_4_io_i_feature),
    .io_i_weight(sys_arr_4_4_io_i_weight),
    .io_o_feature(sys_arr_4_4_io_o_feature),
    .io_o_weight(sys_arr_4_4_io_o_weight),
    .io_o_sum(sys_arr_4_4_io_o_sum)
  );
  assign io_o_result_0_0 = sys_arr_0_0_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_0_1 = sys_arr_0_1_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_0_2 = sys_arr_0_2_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_0_3 = sys_arr_0_3_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_0_4 = sys_arr_0_4_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_1_0 = sys_arr_1_0_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_1_1 = sys_arr_1_1_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_1_2 = sys_arr_1_2_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_1_3 = sys_arr_1_3_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_1_4 = sys_arr_1_4_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_2_0 = sys_arr_2_0_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_2_1 = sys_arr_2_1_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_2_2 = sys_arr_2_2_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_2_3 = sys_arr_2_3_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_2_4 = sys_arr_2_4_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_3_0 = sys_arr_3_0_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_3_1 = sys_arr_3_1_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_3_2 = sys_arr_3_2_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_3_3 = sys_arr_3_3_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_3_4 = sys_arr_3_4_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_4_0 = sys_arr_4_0_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_4_1 = sys_arr_4_1_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_4_2 = sys_arr_4_2_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_4_3 = sys_arr_4_3_io_o_sum; // @[osSA.scala 28:23]
  assign io_o_result_4_4 = sys_arr_4_4_io_o_sum; // @[osSA.scala 28:23]
  assign sys_arr_0_0_clock = clock;
  assign sys_arr_0_0_io_i_feature = io_i_feature_0; // @[osSA.scala 24:36]
  assign sys_arr_0_0_io_i_weight = io_i_weight_0; // @[osSA.scala 19:40]
  assign sys_arr_0_1_clock = clock;
  assign sys_arr_0_1_io_i_feature = sys_arr_0_0_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_0_1_io_i_weight = io_i_weight_1; // @[osSA.scala 19:40]
  assign sys_arr_0_2_clock = clock;
  assign sys_arr_0_2_io_i_feature = sys_arr_0_1_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_0_2_io_i_weight = io_i_weight_2; // @[osSA.scala 19:40]
  assign sys_arr_0_3_clock = clock;
  assign sys_arr_0_3_io_i_feature = sys_arr_0_2_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_0_3_io_i_weight = io_i_weight_3; // @[osSA.scala 19:40]
  assign sys_arr_0_4_clock = clock;
  assign sys_arr_0_4_io_i_feature = sys_arr_0_3_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_0_4_io_i_weight = io_i_weight_4; // @[osSA.scala 19:40]
  assign sys_arr_1_0_clock = clock;
  assign sys_arr_1_0_io_i_feature = io_i_feature_1; // @[osSA.scala 24:36]
  assign sys_arr_1_0_io_i_weight = sys_arr_0_0_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_1_1_clock = clock;
  assign sys_arr_1_1_io_i_feature = sys_arr_1_0_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_1_1_io_i_weight = sys_arr_0_1_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_1_2_clock = clock;
  assign sys_arr_1_2_io_i_feature = sys_arr_1_1_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_1_2_io_i_weight = sys_arr_0_2_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_1_3_clock = clock;
  assign sys_arr_1_3_io_i_feature = sys_arr_1_2_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_1_3_io_i_weight = sys_arr_0_3_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_1_4_clock = clock;
  assign sys_arr_1_4_io_i_feature = sys_arr_1_3_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_1_4_io_i_weight = sys_arr_0_4_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_2_0_clock = clock;
  assign sys_arr_2_0_io_i_feature = io_i_feature_2; // @[osSA.scala 24:36]
  assign sys_arr_2_0_io_i_weight = sys_arr_1_0_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_2_1_clock = clock;
  assign sys_arr_2_1_io_i_feature = sys_arr_2_0_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_2_1_io_i_weight = sys_arr_1_1_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_2_2_clock = clock;
  assign sys_arr_2_2_io_i_feature = sys_arr_2_1_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_2_2_io_i_weight = sys_arr_1_2_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_2_3_clock = clock;
  assign sys_arr_2_3_io_i_feature = sys_arr_2_2_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_2_3_io_i_weight = sys_arr_1_3_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_2_4_clock = clock;
  assign sys_arr_2_4_io_i_feature = sys_arr_2_3_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_2_4_io_i_weight = sys_arr_1_4_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_3_0_clock = clock;
  assign sys_arr_3_0_io_i_feature = io_i_feature_3; // @[osSA.scala 24:36]
  assign sys_arr_3_0_io_i_weight = sys_arr_2_0_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_3_1_clock = clock;
  assign sys_arr_3_1_io_i_feature = sys_arr_3_0_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_3_1_io_i_weight = sys_arr_2_1_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_3_2_clock = clock;
  assign sys_arr_3_2_io_i_feature = sys_arr_3_1_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_3_2_io_i_weight = sys_arr_2_2_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_3_3_clock = clock;
  assign sys_arr_3_3_io_i_feature = sys_arr_3_2_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_3_3_io_i_weight = sys_arr_2_3_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_3_4_clock = clock;
  assign sys_arr_3_4_io_i_feature = sys_arr_3_3_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_3_4_io_i_weight = sys_arr_2_4_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_4_0_clock = clock;
  assign sys_arr_4_0_io_i_feature = io_i_feature_4; // @[osSA.scala 24:36]
  assign sys_arr_4_0_io_i_weight = sys_arr_3_0_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_4_1_clock = clock;
  assign sys_arr_4_1_io_i_feature = sys_arr_4_0_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_4_1_io_i_weight = sys_arr_3_1_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_4_2_clock = clock;
  assign sys_arr_4_2_io_i_feature = sys_arr_4_1_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_4_2_io_i_weight = sys_arr_3_2_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_4_3_clock = clock;
  assign sys_arr_4_3_io_i_feature = sys_arr_4_2_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_4_3_io_i_weight = sys_arr_3_3_io_o_weight; // @[osSA.scala 21:40]
  assign sys_arr_4_4_clock = clock;
  assign sys_arr_4_4_io_i_feature = sys_arr_4_3_io_o_feature; // @[osSA.scala 26:40]
  assign sys_arr_4_4_io_i_weight = sys_arr_3_4_io_o_weight; // @[osSA.scala 21:40]
endmodule
