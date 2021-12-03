module osPE(
  input         clock,
  input         reset,
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
  reg [7:0] r_feature; // @[osPE.scala 16:22]
  reg [7:0] r_weight; // @[osPE.scala 17:22]
  reg [15:0] r_mac; // @[osPE.scala 18:22]
  wire [15:0] _r_mac_T = $signed(io_i_feature) * $signed(io_i_weight); // @[osPE.scala 22:41]
  assign io_o_feature = r_feature; // @[osPE.scala 24:16]
  assign io_o_weight = r_weight; // @[osPE.scala 25:16]
  assign io_o_sum = r_mac; // @[osPE.scala 26:16]
  always @(posedge clock) begin
    r_feature <= io_i_feature; // @[osPE.scala 20:16]
    r_weight <= io_i_weight; // @[osPE.scala 21:16]
    r_mac <= $signed(r_mac) + $signed(_r_mac_T); // @[osPE.scala 22:25]
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
