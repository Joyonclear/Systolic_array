circuit osPE :
  module osPE :
    input clock : Clock
    input reset : UInt<1>
    input io_i_feature : SInt<8>
    input io_i_weight : SInt<8>
    output io_o_feature : SInt<8>
    output io_o_weight : SInt<8>
    output io_o_sum : SInt<16>

    reg r_feature : SInt<8>, clock with :
      reset => (UInt<1>("h0"), r_feature) @[osPE.scala 16:22]
    reg r_weight : SInt<8>, clock with :
      reset => (UInt<1>("h0"), r_weight) @[osPE.scala 17:22]
    reg r_mac : SInt<16>, clock with :
      reset => (UInt<1>("h0"), r_mac) @[osPE.scala 18:22]
    node _r_mac_T = mul(io_i_feature, io_i_weight) @[osPE.scala 22:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 22:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 22:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 22:25]
    io_o_feature <= r_feature @[osPE.scala 24:16]
    io_o_weight <= r_weight @[osPE.scala 25:16]
    io_o_sum <= r_mac @[osPE.scala 26:16]
    r_feature <= io_i_feature @[osPE.scala 20:16]
    r_weight <= io_i_weight @[osPE.scala 21:16]
    r_mac <= _r_mac_T_3 @[osPE.scala 22:16]
