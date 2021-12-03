circuit wsPE :
  module wsPE :
    input clock : Clock
    input reset : UInt<1>
    input io_i_loading : UInt<1>
    input io_i_feature : SInt<8>
    input io_i_weight : SInt<8>
    input io_i_sum : SInt<16>
    output io_o_feature : SInt<8>
    output io_o_weight : SInt<8>
    output io_o_sum : SInt<16>

    reg r_weight : SInt<8>, clock with :
      reset => (UInt<1>("h0"), r_weight) @[wsPE.scala 17:22]
    reg r_feature : SInt<8>, clock with :
      reset => (UInt<1>("h0"), r_feature) @[wsPE.scala 18:22]
    reg r_mac : SInt<16>, clock with :
      reset => (UInt<1>("h0"), r_mac) @[wsPE.scala 19:22]
    node _T = eq(io_i_loading, UInt<1>("h1")) @[wsPE.scala 21:22]
    node _GEN_0 = mux(_T, io_i_weight, r_weight) @[wsPE.scala 21:34 wsPE.scala 22:14 wsPE.scala 25:14]
    node _r_mac_T = mul(io_i_feature, r_weight) @[wsPE.scala 28:33]
    node _r_mac_T_1 = add(_r_mac_T, io_i_sum) @[wsPE.scala 28:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 28:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 28:45]
    io_o_feature <= r_feature @[wsPE.scala 30:16]
    io_o_weight <= r_weight @[wsPE.scala 31:16]
    io_o_sum <= r_mac @[wsPE.scala 32:16]
    r_weight <= _GEN_0
    r_feature <= io_i_feature @[wsPE.scala 27:16]
    r_mac <= _r_mac_T_3 @[wsPE.scala 28:16]
