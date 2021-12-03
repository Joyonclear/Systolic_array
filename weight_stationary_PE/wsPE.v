module wsPE(
  input         clock,
  input         reset,
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
  reg [7:0] r_weight; // @[wsPE.scala 17:22]
  reg [7:0] r_feature; // @[wsPE.scala 18:22]
  reg [15:0] r_mac; // @[wsPE.scala 19:22]
  wire [15:0] _r_mac_T = $signed(io_i_feature) * $signed(r_weight); // @[wsPE.scala 28:33]
  assign io_o_feature = r_feature; // @[wsPE.scala 30:16]
  assign io_o_weight = r_weight; // @[wsPE.scala 31:16]
  assign io_o_sum = r_mac; // @[wsPE.scala 32:16]
  always @(posedge clock) begin
    if (io_i_loading) begin // @[wsPE.scala 21:34]
      r_weight <= io_i_weight; // @[wsPE.scala 22:14]
    end
    r_feature <= io_i_feature; // @[wsPE.scala 27:16]
    r_mac <= $signed(_r_mac_T) + $signed(io_i_sum); // @[wsPE.scala 28:45]
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
