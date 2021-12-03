;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit osPE : 
  module osPE : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 16:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 17:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 18:22]
    r_feature <= io.i_feature @[osPE.scala 20:16]
    r_weight <= io.i_weight @[osPE.scala 21:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 22:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 22:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 22:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 22:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 22:16]
    io.o_feature <= r_feature @[osPE.scala 24:16]
    io.o_weight <= r_weight @[osPE.scala 25:16]
    io.o_sum <= r_mac @[osPE.scala 26:16]
    
