;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit wsPE : 
  module wsPE : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 17:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 19:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 21:22]
    when _T : @[wsPE.scala 21:34]
      r_weight <= io.i_weight @[wsPE.scala 22:14]
      skip @[wsPE.scala 21:34]
    else : @[wsPE.scala 24:14]
      r_weight <= r_weight @[wsPE.scala 25:14]
      skip @[wsPE.scala 24:14]
    r_feature <= io.i_feature @[wsPE.scala 27:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 28:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 28:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 28:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 28:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 28:16]
    io.o_feature <= r_feature @[wsPE.scala 30:16]
    io.o_weight <= r_weight @[wsPE.scala 31:16]
    io.o_sum <= r_mac @[wsPE.scala 32:16]
    
