circuit osSA :
  module osPE :
    input clock : Clock
    input reset : UInt<1>
    input io_i_feature : SInt<8>
    input io_i_weight : SInt<8>
    output io_o_feature : SInt<8>
    output io_o_weight : SInt<8>
    output io_o_sum : SInt<16>

    reg r_feature : SInt<8>, clock with :
      reset => (UInt<1>("h0"), r_feature) @[osPE.scala 14:22]
    reg r_weight : SInt<8>, clock with :
      reset => (UInt<1>("h0"), r_weight) @[osPE.scala 15:22]
    reg r_mac : SInt<16>, clock with :
      reset => (UInt<1>("h0"), r_mac) @[osPE.scala 16:22]
    node _r_mac_T = mul(io_i_feature, io_i_weight) @[osPE.scala 20:41]
    node _r_mac_T_1 = add(r_mac, _r_mac_T) @[osPE.scala 20:25]
    node _r_mac_T_2 = tail(_r_mac_T_1, 1) @[osPE.scala 20:25]
    node _r_mac_T_3 = asSInt(_r_mac_T_2) @[osPE.scala 20:25]
    io_o_feature <= r_feature @[osPE.scala 22:16]
    io_o_weight <= r_weight @[osPE.scala 23:16]
    io_o_sum <= r_mac @[osPE.scala 24:16]
    r_feature <= io_i_feature @[osPE.scala 18:16]
    r_weight <= io_i_weight @[osPE.scala 19:16]
    r_mac <= _r_mac_T_3 @[osPE.scala 20:16]

  module osSA :
    input clock : Clock
    input reset : UInt<1>
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
    output io_o_result_0_0 : SInt<16>
    output io_o_result_0_1 : SInt<16>
    output io_o_result_0_2 : SInt<16>
    output io_o_result_0_3 : SInt<16>
    output io_o_result_0_4 : SInt<16>
    output io_o_result_1_0 : SInt<16>
    output io_o_result_1_1 : SInt<16>
    output io_o_result_1_2 : SInt<16>
    output io_o_result_1_3 : SInt<16>
    output io_o_result_1_4 : SInt<16>
    output io_o_result_2_0 : SInt<16>
    output io_o_result_2_1 : SInt<16>
    output io_o_result_2_2 : SInt<16>
    output io_o_result_2_3 : SInt<16>
    output io_o_result_2_4 : SInt<16>
    output io_o_result_3_0 : SInt<16>
    output io_o_result_3_1 : SInt<16>
    output io_o_result_3_2 : SInt<16>
    output io_o_result_3_3 : SInt<16>
    output io_o_result_3_4 : SInt<16>
    output io_o_result_4_0 : SInt<16>
    output io_o_result_4_1 : SInt<16>
    output io_o_result_4_2 : SInt<16>
    output io_o_result_4_3 : SInt<16>
    output io_o_result_4_4 : SInt<16>

    inst sys_arr_0_0 of osPE @[osSA.scala 14:57]
    inst sys_arr_0_1 of osPE @[osSA.scala 14:57]
    inst sys_arr_0_2 of osPE @[osSA.scala 14:57]
    inst sys_arr_0_3 of osPE @[osSA.scala 14:57]
    inst sys_arr_0_4 of osPE @[osSA.scala 14:57]
    inst sys_arr_1_0 of osPE @[osSA.scala 14:57]
    inst sys_arr_1_1 of osPE @[osSA.scala 14:57]
    inst sys_arr_1_2 of osPE @[osSA.scala 14:57]
    inst sys_arr_1_3 of osPE @[osSA.scala 14:57]
    inst sys_arr_1_4 of osPE @[osSA.scala 14:57]
    inst sys_arr_2_0 of osPE @[osSA.scala 14:57]
    inst sys_arr_2_1 of osPE @[osSA.scala 14:57]
    inst sys_arr_2_2 of osPE @[osSA.scala 14:57]
    inst sys_arr_2_3 of osPE @[osSA.scala 14:57]
    inst sys_arr_2_4 of osPE @[osSA.scala 14:57]
    inst sys_arr_3_0 of osPE @[osSA.scala 14:57]
    inst sys_arr_3_1 of osPE @[osSA.scala 14:57]
    inst sys_arr_3_2 of osPE @[osSA.scala 14:57]
    inst sys_arr_3_3 of osPE @[osSA.scala 14:57]
    inst sys_arr_3_4 of osPE @[osSA.scala 14:57]
    inst sys_arr_4_0 of osPE @[osSA.scala 14:57]
    inst sys_arr_4_1 of osPE @[osSA.scala 14:57]
    inst sys_arr_4_2 of osPE @[osSA.scala 14:57]
    inst sys_arr_4_3 of osPE @[osSA.scala 14:57]
    inst sys_arr_4_4 of osPE @[osSA.scala 14:57]
    io_o_result_0_0 <= sys_arr_0_0.io_o_sum @[osSA.scala 28:23]
    io_o_result_0_1 <= sys_arr_0_1.io_o_sum @[osSA.scala 28:23]
    io_o_result_0_2 <= sys_arr_0_2.io_o_sum @[osSA.scala 28:23]
    io_o_result_0_3 <= sys_arr_0_3.io_o_sum @[osSA.scala 28:23]
    io_o_result_0_4 <= sys_arr_0_4.io_o_sum @[osSA.scala 28:23]
    io_o_result_1_0 <= sys_arr_1_0.io_o_sum @[osSA.scala 28:23]
    io_o_result_1_1 <= sys_arr_1_1.io_o_sum @[osSA.scala 28:23]
    io_o_result_1_2 <= sys_arr_1_2.io_o_sum @[osSA.scala 28:23]
    io_o_result_1_3 <= sys_arr_1_3.io_o_sum @[osSA.scala 28:23]
    io_o_result_1_4 <= sys_arr_1_4.io_o_sum @[osSA.scala 28:23]
    io_o_result_2_0 <= sys_arr_2_0.io_o_sum @[osSA.scala 28:23]
    io_o_result_2_1 <= sys_arr_2_1.io_o_sum @[osSA.scala 28:23]
    io_o_result_2_2 <= sys_arr_2_2.io_o_sum @[osSA.scala 28:23]
    io_o_result_2_3 <= sys_arr_2_3.io_o_sum @[osSA.scala 28:23]
    io_o_result_2_4 <= sys_arr_2_4.io_o_sum @[osSA.scala 28:23]
    io_o_result_3_0 <= sys_arr_3_0.io_o_sum @[osSA.scala 28:23]
    io_o_result_3_1 <= sys_arr_3_1.io_o_sum @[osSA.scala 28:23]
    io_o_result_3_2 <= sys_arr_3_2.io_o_sum @[osSA.scala 28:23]
    io_o_result_3_3 <= sys_arr_3_3.io_o_sum @[osSA.scala 28:23]
    io_o_result_3_4 <= sys_arr_3_4.io_o_sum @[osSA.scala 28:23]
    io_o_result_4_0 <= sys_arr_4_0.io_o_sum @[osSA.scala 28:23]
    io_o_result_4_1 <= sys_arr_4_1.io_o_sum @[osSA.scala 28:23]
    io_o_result_4_2 <= sys_arr_4_2.io_o_sum @[osSA.scala 28:23]
    io_o_result_4_3 <= sys_arr_4_3.io_o_sum @[osSA.scala 28:23]
    io_o_result_4_4 <= sys_arr_4_4.io_o_sum @[osSA.scala 28:23]
    sys_arr_0_0.clock <= clock
    sys_arr_0_0.reset <= reset
    sys_arr_0_0.io_i_feature <= io_i_feature_0 @[osSA.scala 24:36]
    sys_arr_0_0.io_i_weight <= io_i_weight_0 @[osSA.scala 19:40]
    sys_arr_0_1.clock <= clock
    sys_arr_0_1.reset <= reset
    sys_arr_0_1.io_i_feature <= sys_arr_0_0.io_o_feature @[osSA.scala 26:40]
    sys_arr_0_1.io_i_weight <= io_i_weight_1 @[osSA.scala 19:40]
    sys_arr_0_2.clock <= clock
    sys_arr_0_2.reset <= reset
    sys_arr_0_2.io_i_feature <= sys_arr_0_1.io_o_feature @[osSA.scala 26:40]
    sys_arr_0_2.io_i_weight <= io_i_weight_2 @[osSA.scala 19:40]
    sys_arr_0_3.clock <= clock
    sys_arr_0_3.reset <= reset
    sys_arr_0_3.io_i_feature <= sys_arr_0_2.io_o_feature @[osSA.scala 26:40]
    sys_arr_0_3.io_i_weight <= io_i_weight_3 @[osSA.scala 19:40]
    sys_arr_0_4.clock <= clock
    sys_arr_0_4.reset <= reset
    sys_arr_0_4.io_i_feature <= sys_arr_0_3.io_o_feature @[osSA.scala 26:40]
    sys_arr_0_4.io_i_weight <= io_i_weight_4 @[osSA.scala 19:40]
    sys_arr_1_0.clock <= clock
    sys_arr_1_0.reset <= reset
    sys_arr_1_0.io_i_feature <= io_i_feature_1 @[osSA.scala 24:36]
    sys_arr_1_0.io_i_weight <= sys_arr_0_0.io_o_weight @[osSA.scala 21:40]
    sys_arr_1_1.clock <= clock
    sys_arr_1_1.reset <= reset
    sys_arr_1_1.io_i_feature <= sys_arr_1_0.io_o_feature @[osSA.scala 26:40]
    sys_arr_1_1.io_i_weight <= sys_arr_0_1.io_o_weight @[osSA.scala 21:40]
    sys_arr_1_2.clock <= clock
    sys_arr_1_2.reset <= reset
    sys_arr_1_2.io_i_feature <= sys_arr_1_1.io_o_feature @[osSA.scala 26:40]
    sys_arr_1_2.io_i_weight <= sys_arr_0_2.io_o_weight @[osSA.scala 21:40]
    sys_arr_1_3.clock <= clock
    sys_arr_1_3.reset <= reset
    sys_arr_1_3.io_i_feature <= sys_arr_1_2.io_o_feature @[osSA.scala 26:40]
    sys_arr_1_3.io_i_weight <= sys_arr_0_3.io_o_weight @[osSA.scala 21:40]
    sys_arr_1_4.clock <= clock
    sys_arr_1_4.reset <= reset
    sys_arr_1_4.io_i_feature <= sys_arr_1_3.io_o_feature @[osSA.scala 26:40]
    sys_arr_1_4.io_i_weight <= sys_arr_0_4.io_o_weight @[osSA.scala 21:40]
    sys_arr_2_0.clock <= clock
    sys_arr_2_0.reset <= reset
    sys_arr_2_0.io_i_feature <= io_i_feature_2 @[osSA.scala 24:36]
    sys_arr_2_0.io_i_weight <= sys_arr_1_0.io_o_weight @[osSA.scala 21:40]
    sys_arr_2_1.clock <= clock
    sys_arr_2_1.reset <= reset
    sys_arr_2_1.io_i_feature <= sys_arr_2_0.io_o_feature @[osSA.scala 26:40]
    sys_arr_2_1.io_i_weight <= sys_arr_1_1.io_o_weight @[osSA.scala 21:40]
    sys_arr_2_2.clock <= clock
    sys_arr_2_2.reset <= reset
    sys_arr_2_2.io_i_feature <= sys_arr_2_1.io_o_feature @[osSA.scala 26:40]
    sys_arr_2_2.io_i_weight <= sys_arr_1_2.io_o_weight @[osSA.scala 21:40]
    sys_arr_2_3.clock <= clock
    sys_arr_2_3.reset <= reset
    sys_arr_2_3.io_i_feature <= sys_arr_2_2.io_o_feature @[osSA.scala 26:40]
    sys_arr_2_3.io_i_weight <= sys_arr_1_3.io_o_weight @[osSA.scala 21:40]
    sys_arr_2_4.clock <= clock
    sys_arr_2_4.reset <= reset
    sys_arr_2_4.io_i_feature <= sys_arr_2_3.io_o_feature @[osSA.scala 26:40]
    sys_arr_2_4.io_i_weight <= sys_arr_1_4.io_o_weight @[osSA.scala 21:40]
    sys_arr_3_0.clock <= clock
    sys_arr_3_0.reset <= reset
    sys_arr_3_0.io_i_feature <= io_i_feature_3 @[osSA.scala 24:36]
    sys_arr_3_0.io_i_weight <= sys_arr_2_0.io_o_weight @[osSA.scala 21:40]
    sys_arr_3_1.clock <= clock
    sys_arr_3_1.reset <= reset
    sys_arr_3_1.io_i_feature <= sys_arr_3_0.io_o_feature @[osSA.scala 26:40]
    sys_arr_3_1.io_i_weight <= sys_arr_2_1.io_o_weight @[osSA.scala 21:40]
    sys_arr_3_2.clock <= clock
    sys_arr_3_2.reset <= reset
    sys_arr_3_2.io_i_feature <= sys_arr_3_1.io_o_feature @[osSA.scala 26:40]
    sys_arr_3_2.io_i_weight <= sys_arr_2_2.io_o_weight @[osSA.scala 21:40]
    sys_arr_3_3.clock <= clock
    sys_arr_3_3.reset <= reset
    sys_arr_3_3.io_i_feature <= sys_arr_3_2.io_o_feature @[osSA.scala 26:40]
    sys_arr_3_3.io_i_weight <= sys_arr_2_3.io_o_weight @[osSA.scala 21:40]
    sys_arr_3_4.clock <= clock
    sys_arr_3_4.reset <= reset
    sys_arr_3_4.io_i_feature <= sys_arr_3_3.io_o_feature @[osSA.scala 26:40]
    sys_arr_3_4.io_i_weight <= sys_arr_2_4.io_o_weight @[osSA.scala 21:40]
    sys_arr_4_0.clock <= clock
    sys_arr_4_0.reset <= reset
    sys_arr_4_0.io_i_feature <= io_i_feature_4 @[osSA.scala 24:36]
    sys_arr_4_0.io_i_weight <= sys_arr_3_0.io_o_weight @[osSA.scala 21:40]
    sys_arr_4_1.clock <= clock
    sys_arr_4_1.reset <= reset
    sys_arr_4_1.io_i_feature <= sys_arr_4_0.io_o_feature @[osSA.scala 26:40]
    sys_arr_4_1.io_i_weight <= sys_arr_3_1.io_o_weight @[osSA.scala 21:40]
    sys_arr_4_2.clock <= clock
    sys_arr_4_2.reset <= reset
    sys_arr_4_2.io_i_feature <= sys_arr_4_1.io_o_feature @[osSA.scala 26:40]
    sys_arr_4_2.io_i_weight <= sys_arr_3_2.io_o_weight @[osSA.scala 21:40]
    sys_arr_4_3.clock <= clock
    sys_arr_4_3.reset <= reset
    sys_arr_4_3.io_i_feature <= sys_arr_4_2.io_o_feature @[osSA.scala 26:40]
    sys_arr_4_3.io_i_weight <= sys_arr_3_3.io_o_weight @[osSA.scala 21:40]
    sys_arr_4_4.clock <= clock
    sys_arr_4_4.reset <= reset
    sys_arr_4_4.io_i_feature <= sys_arr_4_3.io_o_feature @[osSA.scala 26:40]
    sys_arr_4_4.io_i_weight <= sys_arr_3_4.io_o_weight @[osSA.scala 21:40]
