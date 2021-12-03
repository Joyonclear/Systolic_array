;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit wsSA : 
  module wsPE : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_15 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_16 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_17 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_18 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_19 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_20 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_21 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_22 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_23 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsPE_24 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>, flip i_weight : SInt<8>, flip i_sum : SInt<16>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_weight : SInt<8>, clock @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock @[wsPE.scala 20:22]
    node _T = eq(io.i_loading, UInt<1>("h01")) @[wsPE.scala 22:22]
    when _T : @[wsPE.scala 22:34]
      r_weight <= io.i_weight @[wsPE.scala 23:14]
      skip @[wsPE.scala 22:34]
    else : @[wsPE.scala 25:14]
      r_weight <= r_weight @[wsPE.scala 26:14]
      skip @[wsPE.scala 25:14]
    r_feature <= io.i_feature @[wsPE.scala 28:16]
    node _r_mac_T = mul(io.i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io.i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]
    io.o_feature <= r_feature @[wsPE.scala 31:16]
    io.o_weight <= r_weight @[wsPE.scala 32:16]
    io.o_sum <= r_mac @[wsPE.scala 33:16]
    
  module wsSA : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip i_loading : UInt<1>, flip i_feature : SInt<8>[5], flip i_weight : SInt<8>[5], o_result : SInt<16>[5]}
    
    reg init_sum : SInt<16>[5], clock @[wsSA.scala 15:21]
    inst sys_arr_0_0 of wsPE @[wsSA.scala 16:57]
    sys_arr_0_0.clock <= clock
    sys_arr_0_0.reset <= reset
    inst sys_arr_0_1 of wsPE_1 @[wsSA.scala 16:57]
    sys_arr_0_1.clock <= clock
    sys_arr_0_1.reset <= reset
    inst sys_arr_0_2 of wsPE_2 @[wsSA.scala 16:57]
    sys_arr_0_2.clock <= clock
    sys_arr_0_2.reset <= reset
    inst sys_arr_0_3 of wsPE_3 @[wsSA.scala 16:57]
    sys_arr_0_3.clock <= clock
    sys_arr_0_3.reset <= reset
    inst sys_arr_0_4 of wsPE_4 @[wsSA.scala 16:57]
    sys_arr_0_4.clock <= clock
    sys_arr_0_4.reset <= reset
    inst sys_arr_1_0 of wsPE_5 @[wsSA.scala 16:57]
    sys_arr_1_0.clock <= clock
    sys_arr_1_0.reset <= reset
    inst sys_arr_1_1 of wsPE_6 @[wsSA.scala 16:57]
    sys_arr_1_1.clock <= clock
    sys_arr_1_1.reset <= reset
    inst sys_arr_1_2 of wsPE_7 @[wsSA.scala 16:57]
    sys_arr_1_2.clock <= clock
    sys_arr_1_2.reset <= reset
    inst sys_arr_1_3 of wsPE_8 @[wsSA.scala 16:57]
    sys_arr_1_3.clock <= clock
    sys_arr_1_3.reset <= reset
    inst sys_arr_1_4 of wsPE_9 @[wsSA.scala 16:57]
    sys_arr_1_4.clock <= clock
    sys_arr_1_4.reset <= reset
    inst sys_arr_2_0 of wsPE_10 @[wsSA.scala 16:57]
    sys_arr_2_0.clock <= clock
    sys_arr_2_0.reset <= reset
    inst sys_arr_2_1 of wsPE_11 @[wsSA.scala 16:57]
    sys_arr_2_1.clock <= clock
    sys_arr_2_1.reset <= reset
    inst sys_arr_2_2 of wsPE_12 @[wsSA.scala 16:57]
    sys_arr_2_2.clock <= clock
    sys_arr_2_2.reset <= reset
    inst sys_arr_2_3 of wsPE_13 @[wsSA.scala 16:57]
    sys_arr_2_3.clock <= clock
    sys_arr_2_3.reset <= reset
    inst sys_arr_2_4 of wsPE_14 @[wsSA.scala 16:57]
    sys_arr_2_4.clock <= clock
    sys_arr_2_4.reset <= reset
    inst sys_arr_3_0 of wsPE_15 @[wsSA.scala 16:57]
    sys_arr_3_0.clock <= clock
    sys_arr_3_0.reset <= reset
    inst sys_arr_3_1 of wsPE_16 @[wsSA.scala 16:57]
    sys_arr_3_1.clock <= clock
    sys_arr_3_1.reset <= reset
    inst sys_arr_3_2 of wsPE_17 @[wsSA.scala 16:57]
    sys_arr_3_2.clock <= clock
    sys_arr_3_2.reset <= reset
    inst sys_arr_3_3 of wsPE_18 @[wsSA.scala 16:57]
    sys_arr_3_3.clock <= clock
    sys_arr_3_3.reset <= reset
    inst sys_arr_3_4 of wsPE_19 @[wsSA.scala 16:57]
    sys_arr_3_4.clock <= clock
    sys_arr_3_4.reset <= reset
    inst sys_arr_4_0 of wsPE_20 @[wsSA.scala 16:57]
    sys_arr_4_0.clock <= clock
    sys_arr_4_0.reset <= reset
    inst sys_arr_4_1 of wsPE_21 @[wsSA.scala 16:57]
    sys_arr_4_1.clock <= clock
    sys_arr_4_1.reset <= reset
    inst sys_arr_4_2 of wsPE_22 @[wsSA.scala 16:57]
    sys_arr_4_2.clock <= clock
    sys_arr_4_2.reset <= reset
    inst sys_arr_4_3 of wsPE_23 @[wsSA.scala 16:57]
    sys_arr_4_3.clock <= clock
    sys_arr_4_3.reset <= reset
    inst sys_arr_4_4 of wsPE_24 @[wsSA.scala 16:57]
    sys_arr_4_4.clock <= clock
    sys_arr_4_4.reset <= reset
    node _sys_arr_0_0_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_0_0_io_i_loading_T_1 = mux(_sys_arr_0_0_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_0_0.io.i_loading <= _sys_arr_0_0_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_0_0.io.i_weight <= io.i_weight[0] @[wsSA.scala 22:40]
    sys_arr_0_0.io.i_sum <= init_sum[0] @[wsSA.scala 23:40]
    sys_arr_0_0.io.i_feature <= io.i_feature[0] @[wsSA.scala 30:36]
    node _sys_arr_0_1_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_0_1_io_i_loading_T_1 = mux(_sys_arr_0_1_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_0_1.io.i_loading <= _sys_arr_0_1_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_0_1.io.i_weight <= io.i_weight[1] @[wsSA.scala 22:40]
    sys_arr_0_1.io.i_sum <= init_sum[1] @[wsSA.scala 23:40]
    sys_arr_0_1.io.i_feature <= sys_arr_0_0.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_0_2_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_0_2_io_i_loading_T_1 = mux(_sys_arr_0_2_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_0_2.io.i_loading <= _sys_arr_0_2_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_0_2.io.i_weight <= io.i_weight[2] @[wsSA.scala 22:40]
    sys_arr_0_2.io.i_sum <= init_sum[2] @[wsSA.scala 23:40]
    sys_arr_0_2.io.i_feature <= sys_arr_0_1.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_0_3_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_0_3_io_i_loading_T_1 = mux(_sys_arr_0_3_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_0_3.io.i_loading <= _sys_arr_0_3_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_0_3.io.i_weight <= io.i_weight[3] @[wsSA.scala 22:40]
    sys_arr_0_3.io.i_sum <= init_sum[3] @[wsSA.scala 23:40]
    sys_arr_0_3.io.i_feature <= sys_arr_0_2.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_0_4_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_0_4_io_i_loading_T_1 = mux(_sys_arr_0_4_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_0_4.io.i_loading <= _sys_arr_0_4_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_0_4.io.i_weight <= io.i_weight[4] @[wsSA.scala 22:40]
    sys_arr_0_4.io.i_sum <= init_sum[4] @[wsSA.scala 23:40]
    sys_arr_0_4.io.i_feature <= sys_arr_0_3.io.o_feature @[wsSA.scala 32:40]
    io.o_result[0] <= sys_arr_4_0.io.o_sum @[wsSA.scala 34:20]
    node _sys_arr_1_0_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_1_0_io_i_loading_T_1 = mux(_sys_arr_1_0_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_1_0.io.i_loading <= _sys_arr_1_0_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_1_0.io.i_weight <= sys_arr_0_0.io.o_weight @[wsSA.scala 26:40]
    sys_arr_1_0.io.i_sum <= sys_arr_0_0.io.o_sum @[wsSA.scala 27:40]
    sys_arr_1_0.io.i_feature <= io.i_feature[1] @[wsSA.scala 30:36]
    node _sys_arr_1_1_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_1_1_io_i_loading_T_1 = mux(_sys_arr_1_1_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_1_1.io.i_loading <= _sys_arr_1_1_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_1_1.io.i_weight <= sys_arr_0_1.io.o_weight @[wsSA.scala 26:40]
    sys_arr_1_1.io.i_sum <= sys_arr_0_1.io.o_sum @[wsSA.scala 27:40]
    sys_arr_1_1.io.i_feature <= sys_arr_1_0.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_1_2_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_1_2_io_i_loading_T_1 = mux(_sys_arr_1_2_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_1_2.io.i_loading <= _sys_arr_1_2_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_1_2.io.i_weight <= sys_arr_0_2.io.o_weight @[wsSA.scala 26:40]
    sys_arr_1_2.io.i_sum <= sys_arr_0_2.io.o_sum @[wsSA.scala 27:40]
    sys_arr_1_2.io.i_feature <= sys_arr_1_1.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_1_3_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_1_3_io_i_loading_T_1 = mux(_sys_arr_1_3_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_1_3.io.i_loading <= _sys_arr_1_3_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_1_3.io.i_weight <= sys_arr_0_3.io.o_weight @[wsSA.scala 26:40]
    sys_arr_1_3.io.i_sum <= sys_arr_0_3.io.o_sum @[wsSA.scala 27:40]
    sys_arr_1_3.io.i_feature <= sys_arr_1_2.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_1_4_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_1_4_io_i_loading_T_1 = mux(_sys_arr_1_4_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_1_4.io.i_loading <= _sys_arr_1_4_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_1_4.io.i_weight <= sys_arr_0_4.io.o_weight @[wsSA.scala 26:40]
    sys_arr_1_4.io.i_sum <= sys_arr_0_4.io.o_sum @[wsSA.scala 27:40]
    sys_arr_1_4.io.i_feature <= sys_arr_1_3.io.o_feature @[wsSA.scala 32:40]
    io.o_result[1] <= sys_arr_4_1.io.o_sum @[wsSA.scala 34:20]
    node _sys_arr_2_0_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_2_0_io_i_loading_T_1 = mux(_sys_arr_2_0_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_2_0.io.i_loading <= _sys_arr_2_0_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_2_0.io.i_weight <= sys_arr_1_0.io.o_weight @[wsSA.scala 26:40]
    sys_arr_2_0.io.i_sum <= sys_arr_1_0.io.o_sum @[wsSA.scala 27:40]
    sys_arr_2_0.io.i_feature <= io.i_feature[2] @[wsSA.scala 30:36]
    node _sys_arr_2_1_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_2_1_io_i_loading_T_1 = mux(_sys_arr_2_1_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_2_1.io.i_loading <= _sys_arr_2_1_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_2_1.io.i_weight <= sys_arr_1_1.io.o_weight @[wsSA.scala 26:40]
    sys_arr_2_1.io.i_sum <= sys_arr_1_1.io.o_sum @[wsSA.scala 27:40]
    sys_arr_2_1.io.i_feature <= sys_arr_2_0.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_2_2_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_2_2_io_i_loading_T_1 = mux(_sys_arr_2_2_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_2_2.io.i_loading <= _sys_arr_2_2_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_2_2.io.i_weight <= sys_arr_1_2.io.o_weight @[wsSA.scala 26:40]
    sys_arr_2_2.io.i_sum <= sys_arr_1_2.io.o_sum @[wsSA.scala 27:40]
    sys_arr_2_2.io.i_feature <= sys_arr_2_1.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_2_3_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_2_3_io_i_loading_T_1 = mux(_sys_arr_2_3_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_2_3.io.i_loading <= _sys_arr_2_3_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_2_3.io.i_weight <= sys_arr_1_3.io.o_weight @[wsSA.scala 26:40]
    sys_arr_2_3.io.i_sum <= sys_arr_1_3.io.o_sum @[wsSA.scala 27:40]
    sys_arr_2_3.io.i_feature <= sys_arr_2_2.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_2_4_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_2_4_io_i_loading_T_1 = mux(_sys_arr_2_4_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_2_4.io.i_loading <= _sys_arr_2_4_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_2_4.io.i_weight <= sys_arr_1_4.io.o_weight @[wsSA.scala 26:40]
    sys_arr_2_4.io.i_sum <= sys_arr_1_4.io.o_sum @[wsSA.scala 27:40]
    sys_arr_2_4.io.i_feature <= sys_arr_2_3.io.o_feature @[wsSA.scala 32:40]
    io.o_result[2] <= sys_arr_4_2.io.o_sum @[wsSA.scala 34:20]
    node _sys_arr_3_0_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_3_0_io_i_loading_T_1 = mux(_sys_arr_3_0_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_3_0.io.i_loading <= _sys_arr_3_0_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_3_0.io.i_weight <= sys_arr_2_0.io.o_weight @[wsSA.scala 26:40]
    sys_arr_3_0.io.i_sum <= sys_arr_2_0.io.o_sum @[wsSA.scala 27:40]
    sys_arr_3_0.io.i_feature <= io.i_feature[3] @[wsSA.scala 30:36]
    node _sys_arr_3_1_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_3_1_io_i_loading_T_1 = mux(_sys_arr_3_1_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_3_1.io.i_loading <= _sys_arr_3_1_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_3_1.io.i_weight <= sys_arr_2_1.io.o_weight @[wsSA.scala 26:40]
    sys_arr_3_1.io.i_sum <= sys_arr_2_1.io.o_sum @[wsSA.scala 27:40]
    sys_arr_3_1.io.i_feature <= sys_arr_3_0.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_3_2_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_3_2_io_i_loading_T_1 = mux(_sys_arr_3_2_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_3_2.io.i_loading <= _sys_arr_3_2_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_3_2.io.i_weight <= sys_arr_2_2.io.o_weight @[wsSA.scala 26:40]
    sys_arr_3_2.io.i_sum <= sys_arr_2_2.io.o_sum @[wsSA.scala 27:40]
    sys_arr_3_2.io.i_feature <= sys_arr_3_1.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_3_3_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_3_3_io_i_loading_T_1 = mux(_sys_arr_3_3_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_3_3.io.i_loading <= _sys_arr_3_3_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_3_3.io.i_weight <= sys_arr_2_3.io.o_weight @[wsSA.scala 26:40]
    sys_arr_3_3.io.i_sum <= sys_arr_2_3.io.o_sum @[wsSA.scala 27:40]
    sys_arr_3_3.io.i_feature <= sys_arr_3_2.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_3_4_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_3_4_io_i_loading_T_1 = mux(_sys_arr_3_4_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_3_4.io.i_loading <= _sys_arr_3_4_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_3_4.io.i_weight <= sys_arr_2_4.io.o_weight @[wsSA.scala 26:40]
    sys_arr_3_4.io.i_sum <= sys_arr_2_4.io.o_sum @[wsSA.scala 27:40]
    sys_arr_3_4.io.i_feature <= sys_arr_3_3.io.o_feature @[wsSA.scala 32:40]
    io.o_result[3] <= sys_arr_4_3.io.o_sum @[wsSA.scala 34:20]
    node _sys_arr_4_0_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_4_0_io_i_loading_T_1 = mux(_sys_arr_4_0_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_4_0.io.i_loading <= _sys_arr_4_0_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_4_0.io.i_weight <= sys_arr_3_0.io.o_weight @[wsSA.scala 26:40]
    sys_arr_4_0.io.i_sum <= sys_arr_3_0.io.o_sum @[wsSA.scala 27:40]
    sys_arr_4_0.io.i_feature <= io.i_feature[4] @[wsSA.scala 30:36]
    node _sys_arr_4_1_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_4_1_io_i_loading_T_1 = mux(_sys_arr_4_1_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_4_1.io.i_loading <= _sys_arr_4_1_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_4_1.io.i_weight <= sys_arr_3_1.io.o_weight @[wsSA.scala 26:40]
    sys_arr_4_1.io.i_sum <= sys_arr_3_1.io.o_sum @[wsSA.scala 27:40]
    sys_arr_4_1.io.i_feature <= sys_arr_4_0.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_4_2_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_4_2_io_i_loading_T_1 = mux(_sys_arr_4_2_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_4_2.io.i_loading <= _sys_arr_4_2_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_4_2.io.i_weight <= sys_arr_3_2.io.o_weight @[wsSA.scala 26:40]
    sys_arr_4_2.io.i_sum <= sys_arr_3_2.io.o_sum @[wsSA.scala 27:40]
    sys_arr_4_2.io.i_feature <= sys_arr_4_1.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_4_3_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_4_3_io_i_loading_T_1 = mux(_sys_arr_4_3_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_4_3.io.i_loading <= _sys_arr_4_3_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_4_3.io.i_weight <= sys_arr_3_3.io.o_weight @[wsSA.scala 26:40]
    sys_arr_4_3.io.i_sum <= sys_arr_3_3.io.o_sum @[wsSA.scala 27:40]
    sys_arr_4_3.io.i_feature <= sys_arr_4_2.io.o_feature @[wsSA.scala 32:40]
    node _sys_arr_4_4_io_i_loading_T = eq(io.i_loading, UInt<1>("h01")) @[wsSA.scala 20:58]
    node _sys_arr_4_4_io_i_loading_T_1 = mux(_sys_arr_4_4_io_i_loading_T, UInt<1>("h01"), UInt<1>("h00")) @[wsSA.scala 20:44]
    sys_arr_4_4.io.i_loading <= _sys_arr_4_4_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_4_4.io.i_weight <= sys_arr_3_4.io.o_weight @[wsSA.scala 26:40]
    sys_arr_4_4.io.i_sum <= sys_arr_3_4.io.o_sum @[wsSA.scala 27:40]
    sys_arr_4_4.io.i_feature <= sys_arr_4_3.io.o_feature @[wsSA.scala 32:40]
    io.o_result[4] <= sys_arr_4_4.io.o_sum @[wsSA.scala 34:20]
    
