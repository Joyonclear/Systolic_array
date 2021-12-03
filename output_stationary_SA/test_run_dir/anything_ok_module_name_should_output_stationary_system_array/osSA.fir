;buildInfoPackage: chisel3, version: 3.4.3, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit osSA : 
  module osPE : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_1 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_2 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_3 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_4 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_5 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_6 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_7 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_8 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_9 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_10 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_11 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_12 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_13 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_14 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_15 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_16 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_17 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_18 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_19 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_20 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_21 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_22 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_23 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osPE_24 : 
    input clock : Clock
    input reset : Reset
    output io : {flip i_feature : SInt<8>, flip i_weight : SInt<8>, o_feature : SInt<8>, o_weight : SInt<8>, o_sum : SInt<16>}
    
    reg r_feature : SInt<8>, clock @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock @[osPE.scala 16:22]
    r_feature <= io.i_feature @[osPE.scala 18:16]
    r_weight <= io.i_weight @[osPE.scala 19:16]
    node _r_mac_T = mul(io.i_feature, io.i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]
    io.o_feature <= r_feature @[osPE.scala 22:16]
    io.o_weight <= r_weight @[osPE.scala 23:16]
    io.o_sum <= r_mac @[osPE.scala 24:16]
    
  module osSA : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip i_feature : SInt<8>[5], flip i_weight : SInt<8>[5], o_result : SInt<16>[5][5]}
    
    inst sys_arr_0_0 of osPE @[osSA.scala 14:57]
    sys_arr_0_0.clock <= clock
    sys_arr_0_0.reset <= reset
    inst sys_arr_0_1 of osPE_1 @[osSA.scala 14:57]
    sys_arr_0_1.clock <= clock
    sys_arr_0_1.reset <= reset
    inst sys_arr_0_2 of osPE_2 @[osSA.scala 14:57]
    sys_arr_0_2.clock <= clock
    sys_arr_0_2.reset <= reset
    inst sys_arr_0_3 of osPE_3 @[osSA.scala 14:57]
    sys_arr_0_3.clock <= clock
    sys_arr_0_3.reset <= reset
    inst sys_arr_0_4 of osPE_4 @[osSA.scala 14:57]
    sys_arr_0_4.clock <= clock
    sys_arr_0_4.reset <= reset
    inst sys_arr_1_0 of osPE_5 @[osSA.scala 14:57]
    sys_arr_1_0.clock <= clock
    sys_arr_1_0.reset <= reset
    inst sys_arr_1_1 of osPE_6 @[osSA.scala 14:57]
    sys_arr_1_1.clock <= clock
    sys_arr_1_1.reset <= reset
    inst sys_arr_1_2 of osPE_7 @[osSA.scala 14:57]
    sys_arr_1_2.clock <= clock
    sys_arr_1_2.reset <= reset
    inst sys_arr_1_3 of osPE_8 @[osSA.scala 14:57]
    sys_arr_1_3.clock <= clock
    sys_arr_1_3.reset <= reset
    inst sys_arr_1_4 of osPE_9 @[osSA.scala 14:57]
    sys_arr_1_4.clock <= clock
    sys_arr_1_4.reset <= reset
    inst sys_arr_2_0 of osPE_10 @[osSA.scala 14:57]
    sys_arr_2_0.clock <= clock
    sys_arr_2_0.reset <= reset
    inst sys_arr_2_1 of osPE_11 @[osSA.scala 14:57]
    sys_arr_2_1.clock <= clock
    sys_arr_2_1.reset <= reset
    inst sys_arr_2_2 of osPE_12 @[osSA.scala 14:57]
    sys_arr_2_2.clock <= clock
    sys_arr_2_2.reset <= reset
    inst sys_arr_2_3 of osPE_13 @[osSA.scala 14:57]
    sys_arr_2_3.clock <= clock
    sys_arr_2_3.reset <= reset
    inst sys_arr_2_4 of osPE_14 @[osSA.scala 14:57]
    sys_arr_2_4.clock <= clock
    sys_arr_2_4.reset <= reset
    inst sys_arr_3_0 of osPE_15 @[osSA.scala 14:57]
    sys_arr_3_0.clock <= clock
    sys_arr_3_0.reset <= reset
    inst sys_arr_3_1 of osPE_16 @[osSA.scala 14:57]
    sys_arr_3_1.clock <= clock
    sys_arr_3_1.reset <= reset
    inst sys_arr_3_2 of osPE_17 @[osSA.scala 14:57]
    sys_arr_3_2.clock <= clock
    sys_arr_3_2.reset <= reset
    inst sys_arr_3_3 of osPE_18 @[osSA.scala 14:57]
    sys_arr_3_3.clock <= clock
    sys_arr_3_3.reset <= reset
    inst sys_arr_3_4 of osPE_19 @[osSA.scala 14:57]
    sys_arr_3_4.clock <= clock
    sys_arr_3_4.reset <= reset
    inst sys_arr_4_0 of osPE_20 @[osSA.scala 14:57]
    sys_arr_4_0.clock <= clock
    sys_arr_4_0.reset <= reset
    inst sys_arr_4_1 of osPE_21 @[osSA.scala 14:57]
    sys_arr_4_1.clock <= clock
    sys_arr_4_1.reset <= reset
    inst sys_arr_4_2 of osPE_22 @[osSA.scala 14:57]
    sys_arr_4_2.clock <= clock
    sys_arr_4_2.reset <= reset
    inst sys_arr_4_3 of osPE_23 @[osSA.scala 14:57]
    sys_arr_4_3.clock <= clock
    sys_arr_4_3.reset <= reset
    inst sys_arr_4_4 of osPE_24 @[osSA.scala 14:57]
    sys_arr_4_4.clock <= clock
    sys_arr_4_4.reset <= reset
    sys_arr_0_0.io.i_weight <= io.i_weight[0] @[osSA.scala 19:40]
    sys_arr_0_0.io.i_feature <= io.i_feature[0] @[osSA.scala 24:36]
    io.o_result[0][0] <= sys_arr_0_0.io.o_sum @[osSA.scala 28:23]
    sys_arr_0_1.io.i_weight <= io.i_weight[1] @[osSA.scala 19:40]
    sys_arr_0_1.io.i_feature <= sys_arr_0_0.io.o_feature @[osSA.scala 26:40]
    io.o_result[0][1] <= sys_arr_0_1.io.o_sum @[osSA.scala 28:23]
    sys_arr_0_2.io.i_weight <= io.i_weight[2] @[osSA.scala 19:40]
    sys_arr_0_2.io.i_feature <= sys_arr_0_1.io.o_feature @[osSA.scala 26:40]
    io.o_result[0][2] <= sys_arr_0_2.io.o_sum @[osSA.scala 28:23]
    sys_arr_0_3.io.i_weight <= io.i_weight[3] @[osSA.scala 19:40]
    sys_arr_0_3.io.i_feature <= sys_arr_0_2.io.o_feature @[osSA.scala 26:40]
    io.o_result[0][3] <= sys_arr_0_3.io.o_sum @[osSA.scala 28:23]
    sys_arr_0_4.io.i_weight <= io.i_weight[4] @[osSA.scala 19:40]
    sys_arr_0_4.io.i_feature <= sys_arr_0_3.io.o_feature @[osSA.scala 26:40]
    io.o_result[0][4] <= sys_arr_0_4.io.o_sum @[osSA.scala 28:23]
    sys_arr_1_0.io.i_weight <= sys_arr_0_0.io.o_weight @[osSA.scala 21:40]
    sys_arr_1_0.io.i_feature <= io.i_feature[1] @[osSA.scala 24:36]
    io.o_result[1][0] <= sys_arr_1_0.io.o_sum @[osSA.scala 28:23]
    sys_arr_1_1.io.i_weight <= sys_arr_0_1.io.o_weight @[osSA.scala 21:40]
    sys_arr_1_1.io.i_feature <= sys_arr_1_0.io.o_feature @[osSA.scala 26:40]
    io.o_result[1][1] <= sys_arr_1_1.io.o_sum @[osSA.scala 28:23]
    sys_arr_1_2.io.i_weight <= sys_arr_0_2.io.o_weight @[osSA.scala 21:40]
    sys_arr_1_2.io.i_feature <= sys_arr_1_1.io.o_feature @[osSA.scala 26:40]
    io.o_result[1][2] <= sys_arr_1_2.io.o_sum @[osSA.scala 28:23]
    sys_arr_1_3.io.i_weight <= sys_arr_0_3.io.o_weight @[osSA.scala 21:40]
    sys_arr_1_3.io.i_feature <= sys_arr_1_2.io.o_feature @[osSA.scala 26:40]
    io.o_result[1][3] <= sys_arr_1_3.io.o_sum @[osSA.scala 28:23]
    sys_arr_1_4.io.i_weight <= sys_arr_0_4.io.o_weight @[osSA.scala 21:40]
    sys_arr_1_4.io.i_feature <= sys_arr_1_3.io.o_feature @[osSA.scala 26:40]
    io.o_result[1][4] <= sys_arr_1_4.io.o_sum @[osSA.scala 28:23]
    sys_arr_2_0.io.i_weight <= sys_arr_1_0.io.o_weight @[osSA.scala 21:40]
    sys_arr_2_0.io.i_feature <= io.i_feature[2] @[osSA.scala 24:36]
    io.o_result[2][0] <= sys_arr_2_0.io.o_sum @[osSA.scala 28:23]
    sys_arr_2_1.io.i_weight <= sys_arr_1_1.io.o_weight @[osSA.scala 21:40]
    sys_arr_2_1.io.i_feature <= sys_arr_2_0.io.o_feature @[osSA.scala 26:40]
    io.o_result[2][1] <= sys_arr_2_1.io.o_sum @[osSA.scala 28:23]
    sys_arr_2_2.io.i_weight <= sys_arr_1_2.io.o_weight @[osSA.scala 21:40]
    sys_arr_2_2.io.i_feature <= sys_arr_2_1.io.o_feature @[osSA.scala 26:40]
    io.o_result[2][2] <= sys_arr_2_2.io.o_sum @[osSA.scala 28:23]
    sys_arr_2_3.io.i_weight <= sys_arr_1_3.io.o_weight @[osSA.scala 21:40]
    sys_arr_2_3.io.i_feature <= sys_arr_2_2.io.o_feature @[osSA.scala 26:40]
    io.o_result[2][3] <= sys_arr_2_3.io.o_sum @[osSA.scala 28:23]
    sys_arr_2_4.io.i_weight <= sys_arr_1_4.io.o_weight @[osSA.scala 21:40]
    sys_arr_2_4.io.i_feature <= sys_arr_2_3.io.o_feature @[osSA.scala 26:40]
    io.o_result[2][4] <= sys_arr_2_4.io.o_sum @[osSA.scala 28:23]
    sys_arr_3_0.io.i_weight <= sys_arr_2_0.io.o_weight @[osSA.scala 21:40]
    sys_arr_3_0.io.i_feature <= io.i_feature[3] @[osSA.scala 24:36]
    io.o_result[3][0] <= sys_arr_3_0.io.o_sum @[osSA.scala 28:23]
    sys_arr_3_1.io.i_weight <= sys_arr_2_1.io.o_weight @[osSA.scala 21:40]
    sys_arr_3_1.io.i_feature <= sys_arr_3_0.io.o_feature @[osSA.scala 26:40]
    io.o_result[3][1] <= sys_arr_3_1.io.o_sum @[osSA.scala 28:23]
    sys_arr_3_2.io.i_weight <= sys_arr_2_2.io.o_weight @[osSA.scala 21:40]
    sys_arr_3_2.io.i_feature <= sys_arr_3_1.io.o_feature @[osSA.scala 26:40]
    io.o_result[3][2] <= sys_arr_3_2.io.o_sum @[osSA.scala 28:23]
    sys_arr_3_3.io.i_weight <= sys_arr_2_3.io.o_weight @[osSA.scala 21:40]
    sys_arr_3_3.io.i_feature <= sys_arr_3_2.io.o_feature @[osSA.scala 26:40]
    io.o_result[3][3] <= sys_arr_3_3.io.o_sum @[osSA.scala 28:23]
    sys_arr_3_4.io.i_weight <= sys_arr_2_4.io.o_weight @[osSA.scala 21:40]
    sys_arr_3_4.io.i_feature <= sys_arr_3_3.io.o_feature @[osSA.scala 26:40]
    io.o_result[3][4] <= sys_arr_3_4.io.o_sum @[osSA.scala 28:23]
    sys_arr_4_0.io.i_weight <= sys_arr_3_0.io.o_weight @[osSA.scala 21:40]
    sys_arr_4_0.io.i_feature <= io.i_feature[4] @[osSA.scala 24:36]
    io.o_result[4][0] <= sys_arr_4_0.io.o_sum @[osSA.scala 28:23]
    sys_arr_4_1.io.i_weight <= sys_arr_3_1.io.o_weight @[osSA.scala 21:40]
    sys_arr_4_1.io.i_feature <= sys_arr_4_0.io.o_feature @[osSA.scala 26:40]
    io.o_result[4][1] <= sys_arr_4_1.io.o_sum @[osSA.scala 28:23]
    sys_arr_4_2.io.i_weight <= sys_arr_3_2.io.o_weight @[osSA.scala 21:40]
    sys_arr_4_2.io.i_feature <= sys_arr_4_1.io.o_feature @[osSA.scala 26:40]
    io.o_result[4][2] <= sys_arr_4_2.io.o_sum @[osSA.scala 28:23]
    sys_arr_4_3.io.i_weight <= sys_arr_3_3.io.o_weight @[osSA.scala 21:40]
    sys_arr_4_3.io.i_feature <= sys_arr_4_2.io.o_feature @[osSA.scala 26:40]
    io.o_result[4][3] <= sys_arr_4_3.io.o_sum @[osSA.scala 28:23]
    sys_arr_4_4.io.i_weight <= sys_arr_3_4.io.o_weight @[osSA.scala 21:40]
    sys_arr_4_4.io.i_feature <= sys_arr_4_3.io.o_feature @[osSA.scala 26:40]
    io.o_result[4][4] <= sys_arr_4_4.io.o_sum @[osSA.scala 28:23]
    
