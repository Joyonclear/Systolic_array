circuit wsSA :
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
      reset => (UInt<1>("h0"), r_weight) @[wsPE.scala 18:22]
    reg r_feature : SInt<8>, clock with :
      reset => (UInt<1>("h0"), r_feature) @[wsPE.scala 19:22]
    reg r_mac : SInt<16>, clock with :
      reset => (UInt<1>("h0"), r_mac) @[wsPE.scala 20:22]
    node _T = eq(io_i_loading, UInt<1>("h1")) @[wsPE.scala 22:22]
    node _GEN_0 = mux(_T, io_i_weight, r_weight) @[wsPE.scala 22:34 wsPE.scala 23:14 wsPE.scala 26:14]
    node _r_mac_T = mul(io_i_feature, r_weight) @[wsPE.scala 29:33]
    node _r_mac_T_1 = add(_r_mac_T, io_i_sum) @[wsPE.scala 29:45]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[wsPE.scala 29:45]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[wsPE.scala 29:45]
    io_o_feature <= r_feature @[wsPE.scala 31:16]
    io_o_weight <= r_weight @[wsPE.scala 32:16]
    io_o_sum <= r_mac @[wsPE.scala 33:16]
    r_weight <= _GEN_0
    r_feature <= io_i_feature @[wsPE.scala 28:16]
    r_mac <= _r_mac_T_3 @[wsPE.scala 29:16]

  module wsSA :
    input clock : Clock
    input reset : UInt<1>
    input io_i_loading : UInt<1>
    input io_i_feature_0 : SInt<8>
    input io_i_feature_1 : SInt<8>
    input io_i_feature_2 : SInt<8>
    input io_i_feature_3 : SInt<8>
    input io_i_feature_4 : SInt<8>
    input io_i_weight_0 : SInt<8>
    input io_i_weight_1 : SInt<8>
    input io_i_weight_2 : SInt<8>
    input io_i_weight_3 : SInt<8>
    input io_i_weight_4 : SInt<8>
    output io_o_result_0 : SInt<16>
    output io_o_result_1 : SInt<16>
    output io_o_result_2 : SInt<16>
    output io_o_result_3 : SInt<16>
    output io_o_result_4 : SInt<16>

    inst sys_arr_0_0 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_0_1 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_0_2 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_0_3 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_0_4 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_1_0 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_1_1 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_1_2 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_1_3 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_1_4 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_2_0 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_2_1 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_2_2 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_2_3 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_2_4 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_3_0 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_3_1 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_3_2 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_3_3 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_3_4 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_4_0 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_4_1 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_4_2 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_4_3 of wsPE @[wsSA.scala 16:57]
    inst sys_arr_4_4 of wsPE @[wsSA.scala 16:57]
    reg init_sum_0 : SInt<16>, clock with :
      reset => (UInt<1>("h0"), init_sum_0) @[wsSA.scala 15:21]
    reg init_sum_1 : SInt<16>, clock with :
      reset => (UInt<1>("h0"), init_sum_1) @[wsSA.scala 15:21]
    reg init_sum_2 : SInt<16>, clock with :
      reset => (UInt<1>("h0"), init_sum_2) @[wsSA.scala 15:21]
    reg init_sum_3 : SInt<16>, clock with :
      reset => (UInt<1>("h0"), init_sum_3) @[wsSA.scala 15:21]
    reg init_sum_4 : SInt<16>, clock with :
      reset => (UInt<1>("h0"), init_sum_4) @[wsSA.scala 15:21]
    node _sys_arr_0_0_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_0_0_io_i_loading_T_1 = mux(_sys_arr_0_0_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_0_1_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_0_1_io_i_loading_T_1 = mux(_sys_arr_0_1_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_0_2_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_0_2_io_i_loading_T_1 = mux(_sys_arr_0_2_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_0_3_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_0_3_io_i_loading_T_1 = mux(_sys_arr_0_3_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_0_4_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_0_4_io_i_loading_T_1 = mux(_sys_arr_0_4_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_1_0_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_1_0_io_i_loading_T_1 = mux(_sys_arr_1_0_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_1_1_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_1_1_io_i_loading_T_1 = mux(_sys_arr_1_1_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_1_2_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_1_2_io_i_loading_T_1 = mux(_sys_arr_1_2_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_1_3_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_1_3_io_i_loading_T_1 = mux(_sys_arr_1_3_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_1_4_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_1_4_io_i_loading_T_1 = mux(_sys_arr_1_4_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_2_0_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_2_0_io_i_loading_T_1 = mux(_sys_arr_2_0_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_2_1_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_2_1_io_i_loading_T_1 = mux(_sys_arr_2_1_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_2_2_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_2_2_io_i_loading_T_1 = mux(_sys_arr_2_2_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_2_3_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_2_3_io_i_loading_T_1 = mux(_sys_arr_2_3_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_2_4_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_2_4_io_i_loading_T_1 = mux(_sys_arr_2_4_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_3_0_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_3_0_io_i_loading_T_1 = mux(_sys_arr_3_0_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_3_1_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_3_1_io_i_loading_T_1 = mux(_sys_arr_3_1_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_3_2_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_3_2_io_i_loading_T_1 = mux(_sys_arr_3_2_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_3_3_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_3_3_io_i_loading_T_1 = mux(_sys_arr_3_3_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_3_4_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_3_4_io_i_loading_T_1 = mux(_sys_arr_3_4_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_4_0_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_4_0_io_i_loading_T_1 = mux(_sys_arr_4_0_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_4_1_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_4_1_io_i_loading_T_1 = mux(_sys_arr_4_1_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_4_2_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_4_2_io_i_loading_T_1 = mux(_sys_arr_4_2_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_4_3_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_4_3_io_i_loading_T_1 = mux(_sys_arr_4_3_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    node _sys_arr_4_4_io_i_loading_T = eq(io_i_loading, UInt<1>("h1")) @[wsSA.scala 20:58]
    node _sys_arr_4_4_io_i_loading_T_1 = mux(_sys_arr_4_4_io_i_loading_T, UInt<1>("h1"), UInt<1>("h0")) @[wsSA.scala 20:44]
    io_o_result_0 <= sys_arr_4_0.io_o_sum @[wsSA.scala 34:20]
    io_o_result_1 <= sys_arr_4_1.io_o_sum @[wsSA.scala 34:20]
    io_o_result_2 <= sys_arr_4_2.io_o_sum @[wsSA.scala 34:20]
    io_o_result_3 <= sys_arr_4_3.io_o_sum @[wsSA.scala 34:20]
    io_o_result_4 <= sys_arr_4_4.io_o_sum @[wsSA.scala 34:20]
    init_sum_0 <= init_sum_0 @[wsSA.scala 15:21]
    init_sum_1 <= init_sum_1 @[wsSA.scala 15:21]
    init_sum_2 <= init_sum_2 @[wsSA.scala 15:21]
    init_sum_3 <= init_sum_3 @[wsSA.scala 15:21]
    init_sum_4 <= init_sum_4 @[wsSA.scala 15:21]
    sys_arr_0_0.clock <= clock
    sys_arr_0_0.reset <= reset
    sys_arr_0_0.io_i_loading <= _sys_arr_0_0_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_0_0.io_i_feature <= io_i_feature_0 @[wsSA.scala 30:36]
    sys_arr_0_0.io_i_weight <= io_i_weight_0 @[wsSA.scala 22:40]
    sys_arr_0_0.io_i_sum <= init_sum_0 @[wsSA.scala 23:40]
    sys_arr_0_1.clock <= clock
    sys_arr_0_1.reset <= reset
    sys_arr_0_1.io_i_loading <= _sys_arr_0_1_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_0_1.io_i_feature <= sys_arr_0_0.io_o_feature @[wsSA.scala 32:40]
    sys_arr_0_1.io_i_weight <= io_i_weight_1 @[wsSA.scala 22:40]
    sys_arr_0_1.io_i_sum <= init_sum_1 @[wsSA.scala 23:40]
    sys_arr_0_2.clock <= clock
    sys_arr_0_2.reset <= reset
    sys_arr_0_2.io_i_loading <= _sys_arr_0_2_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_0_2.io_i_feature <= sys_arr_0_1.io_o_feature @[wsSA.scala 32:40]
    sys_arr_0_2.io_i_weight <= io_i_weight_2 @[wsSA.scala 22:40]
    sys_arr_0_2.io_i_sum <= init_sum_2 @[wsSA.scala 23:40]
    sys_arr_0_3.clock <= clock
    sys_arr_0_3.reset <= reset
    sys_arr_0_3.io_i_loading <= _sys_arr_0_3_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_0_3.io_i_feature <= sys_arr_0_2.io_o_feature @[wsSA.scala 32:40]
    sys_arr_0_3.io_i_weight <= io_i_weight_3 @[wsSA.scala 22:40]
    sys_arr_0_3.io_i_sum <= init_sum_3 @[wsSA.scala 23:40]
    sys_arr_0_4.clock <= clock
    sys_arr_0_4.reset <= reset
    sys_arr_0_4.io_i_loading <= _sys_arr_0_4_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_0_4.io_i_feature <= sys_arr_0_3.io_o_feature @[wsSA.scala 32:40]
    sys_arr_0_4.io_i_weight <= io_i_weight_4 @[wsSA.scala 22:40]
    sys_arr_0_4.io_i_sum <= init_sum_4 @[wsSA.scala 23:40]
    sys_arr_1_0.clock <= clock
    sys_arr_1_0.reset <= reset
    sys_arr_1_0.io_i_loading <= _sys_arr_1_0_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_1_0.io_i_feature <= io_i_feature_1 @[wsSA.scala 30:36]
    sys_arr_1_0.io_i_weight <= sys_arr_0_0.io_o_weight @[wsSA.scala 26:40]
    sys_arr_1_0.io_i_sum <= sys_arr_0_0.io_o_sum @[wsSA.scala 27:40]
    sys_arr_1_1.clock <= clock
    sys_arr_1_1.reset <= reset
    sys_arr_1_1.io_i_loading <= _sys_arr_1_1_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_1_1.io_i_feature <= sys_arr_1_0.io_o_feature @[wsSA.scala 32:40]
    sys_arr_1_1.io_i_weight <= sys_arr_0_1.io_o_weight @[wsSA.scala 26:40]
    sys_arr_1_1.io_i_sum <= sys_arr_0_1.io_o_sum @[wsSA.scala 27:40]
    sys_arr_1_2.clock <= clock
    sys_arr_1_2.reset <= reset
    sys_arr_1_2.io_i_loading <= _sys_arr_1_2_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_1_2.io_i_feature <= sys_arr_1_1.io_o_feature @[wsSA.scala 32:40]
    sys_arr_1_2.io_i_weight <= sys_arr_0_2.io_o_weight @[wsSA.scala 26:40]
    sys_arr_1_2.io_i_sum <= sys_arr_0_2.io_o_sum @[wsSA.scala 27:40]
    sys_arr_1_3.clock <= clock
    sys_arr_1_3.reset <= reset
    sys_arr_1_3.io_i_loading <= _sys_arr_1_3_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_1_3.io_i_feature <= sys_arr_1_2.io_o_feature @[wsSA.scala 32:40]
    sys_arr_1_3.io_i_weight <= sys_arr_0_3.io_o_weight @[wsSA.scala 26:40]
    sys_arr_1_3.io_i_sum <= sys_arr_0_3.io_o_sum @[wsSA.scala 27:40]
    sys_arr_1_4.clock <= clock
    sys_arr_1_4.reset <= reset
    sys_arr_1_4.io_i_loading <= _sys_arr_1_4_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_1_4.io_i_feature <= sys_arr_1_3.io_o_feature @[wsSA.scala 32:40]
    sys_arr_1_4.io_i_weight <= sys_arr_0_4.io_o_weight @[wsSA.scala 26:40]
    sys_arr_1_4.io_i_sum <= sys_arr_0_4.io_o_sum @[wsSA.scala 27:40]
    sys_arr_2_0.clock <= clock
    sys_arr_2_0.reset <= reset
    sys_arr_2_0.io_i_loading <= _sys_arr_2_0_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_2_0.io_i_feature <= io_i_feature_2 @[wsSA.scala 30:36]
    sys_arr_2_0.io_i_weight <= sys_arr_1_0.io_o_weight @[wsSA.scala 26:40]
    sys_arr_2_0.io_i_sum <= sys_arr_1_0.io_o_sum @[wsSA.scala 27:40]
    sys_arr_2_1.clock <= clock
    sys_arr_2_1.reset <= reset
    sys_arr_2_1.io_i_loading <= _sys_arr_2_1_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_2_1.io_i_feature <= sys_arr_2_0.io_o_feature @[wsSA.scala 32:40]
    sys_arr_2_1.io_i_weight <= sys_arr_1_1.io_o_weight @[wsSA.scala 26:40]
    sys_arr_2_1.io_i_sum <= sys_arr_1_1.io_o_sum @[wsSA.scala 27:40]
    sys_arr_2_2.clock <= clock
    sys_arr_2_2.reset <= reset
    sys_arr_2_2.io_i_loading <= _sys_arr_2_2_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_2_2.io_i_feature <= sys_arr_2_1.io_o_feature @[wsSA.scala 32:40]
    sys_arr_2_2.io_i_weight <= sys_arr_1_2.io_o_weight @[wsSA.scala 26:40]
    sys_arr_2_2.io_i_sum <= sys_arr_1_2.io_o_sum @[wsSA.scala 27:40]
    sys_arr_2_3.clock <= clock
    sys_arr_2_3.reset <= reset
    sys_arr_2_3.io_i_loading <= _sys_arr_2_3_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_2_3.io_i_feature <= sys_arr_2_2.io_o_feature @[wsSA.scala 32:40]
    sys_arr_2_3.io_i_weight <= sys_arr_1_3.io_o_weight @[wsSA.scala 26:40]
    sys_arr_2_3.io_i_sum <= sys_arr_1_3.io_o_sum @[wsSA.scala 27:40]
    sys_arr_2_4.clock <= clock
    sys_arr_2_4.reset <= reset
    sys_arr_2_4.io_i_loading <= _sys_arr_2_4_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_2_4.io_i_feature <= sys_arr_2_3.io_o_feature @[wsSA.scala 32:40]
    sys_arr_2_4.io_i_weight <= sys_arr_1_4.io_o_weight @[wsSA.scala 26:40]
    sys_arr_2_4.io_i_sum <= sys_arr_1_4.io_o_sum @[wsSA.scala 27:40]
    sys_arr_3_0.clock <= clock
    sys_arr_3_0.reset <= reset
    sys_arr_3_0.io_i_loading <= _sys_arr_3_0_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_3_0.io_i_feature <= io_i_feature_3 @[wsSA.scala 30:36]
    sys_arr_3_0.io_i_weight <= sys_arr_2_0.io_o_weight @[wsSA.scala 26:40]
    sys_arr_3_0.io_i_sum <= sys_arr_2_0.io_o_sum @[wsSA.scala 27:40]
    sys_arr_3_1.clock <= clock
    sys_arr_3_1.reset <= reset
    sys_arr_3_1.io_i_loading <= _sys_arr_3_1_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_3_1.io_i_feature <= sys_arr_3_0.io_o_feature @[wsSA.scala 32:40]
    sys_arr_3_1.io_i_weight <= sys_arr_2_1.io_o_weight @[wsSA.scala 26:40]
    sys_arr_3_1.io_i_sum <= sys_arr_2_1.io_o_sum @[wsSA.scala 27:40]
    sys_arr_3_2.clock <= clock
    sys_arr_3_2.reset <= reset
    sys_arr_3_2.io_i_loading <= _sys_arr_3_2_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_3_2.io_i_feature <= sys_arr_3_1.io_o_feature @[wsSA.scala 32:40]
    sys_arr_3_2.io_i_weight <= sys_arr_2_2.io_o_weight @[wsSA.scala 26:40]
    sys_arr_3_2.io_i_sum <= sys_arr_2_2.io_o_sum @[wsSA.scala 27:40]
    sys_arr_3_3.clock <= clock
    sys_arr_3_3.reset <= reset
    sys_arr_3_3.io_i_loading <= _sys_arr_3_3_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_3_3.io_i_feature <= sys_arr_3_2.io_o_feature @[wsSA.scala 32:40]
    sys_arr_3_3.io_i_weight <= sys_arr_2_3.io_o_weight @[wsSA.scala 26:40]
    sys_arr_3_3.io_i_sum <= sys_arr_2_3.io_o_sum @[wsSA.scala 27:40]
    sys_arr_3_4.clock <= clock
    sys_arr_3_4.reset <= reset
    sys_arr_3_4.io_i_loading <= _sys_arr_3_4_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_3_4.io_i_feature <= sys_arr_3_3.io_o_feature @[wsSA.scala 32:40]
    sys_arr_3_4.io_i_weight <= sys_arr_2_4.io_o_weight @[wsSA.scala 26:40]
    sys_arr_3_4.io_i_sum <= sys_arr_2_4.io_o_sum @[wsSA.scala 27:40]
    sys_arr_4_0.clock <= clock
    sys_arr_4_0.reset <= reset
    sys_arr_4_0.io_i_loading <= _sys_arr_4_0_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_4_0.io_i_feature <= io_i_feature_4 @[wsSA.scala 30:36]
    sys_arr_4_0.io_i_weight <= sys_arr_3_0.io_o_weight @[wsSA.scala 26:40]
    sys_arr_4_0.io_i_sum <= sys_arr_3_0.io_o_sum @[wsSA.scala 27:40]
    sys_arr_4_1.clock <= clock
    sys_arr_4_1.reset <= reset
    sys_arr_4_1.io_i_loading <= _sys_arr_4_1_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_4_1.io_i_feature <= sys_arr_4_0.io_o_feature @[wsSA.scala 32:40]
    sys_arr_4_1.io_i_weight <= sys_arr_3_1.io_o_weight @[wsSA.scala 26:40]
    sys_arr_4_1.io_i_sum <= sys_arr_3_1.io_o_sum @[wsSA.scala 27:40]
    sys_arr_4_2.clock <= clock
    sys_arr_4_2.reset <= reset
    sys_arr_4_2.io_i_loading <= _sys_arr_4_2_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_4_2.io_i_feature <= sys_arr_4_1.io_o_feature @[wsSA.scala 32:40]
    sys_arr_4_2.io_i_weight <= sys_arr_3_2.io_o_weight @[wsSA.scala 26:40]
    sys_arr_4_2.io_i_sum <= sys_arr_3_2.io_o_sum @[wsSA.scala 27:40]
    sys_arr_4_3.clock <= clock
    sys_arr_4_3.reset <= reset
    sys_arr_4_3.io_i_loading <= _sys_arr_4_3_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_4_3.io_i_feature <= sys_arr_4_2.io_o_feature @[wsSA.scala 32:40]
    sys_arr_4_3.io_i_weight <= sys_arr_3_3.io_o_weight @[wsSA.scala 26:40]
    sys_arr_4_3.io_i_sum <= sys_arr_3_3.io_o_sum @[wsSA.scala 27:40]
    sys_arr_4_4.clock <= clock
    sys_arr_4_4.reset <= reset
    sys_arr_4_4.io_i_loading <= _sys_arr_4_4_io_i_loading_T_1 @[wsSA.scala 20:38]
    sys_arr_4_4.io_i_feature <= sys_arr_4_3.io_o_feature @[wsSA.scala 32:40]
    sys_arr_4_4.io_i_weight <= sys_arr_3_4.io_o_weight @[wsSA.scala 26:40]
    sys_arr_4_4.io_i_sum <= sys_arr_3_4.io_o_sum @[wsSA.scala 27:40]
