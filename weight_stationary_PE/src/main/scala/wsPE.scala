// sbt run
package wsPE

import chisel3._

class wsPE(feature_width:Int, weight_width:Int) extends Module {
  val io = IO (new Bundle {
    val i_loading  = Input(Bool()) 
    val i_feature  = Input(SInt(feature_width.W))
	val i_weight   = Input(SInt(weight_width.W))
	val i_sum      = Input(SInt((feature_width + weight_width).W))
	val o_feature  = Output(SInt(feature_width.W))
	val o_weight   = Output(SInt(weight_width.W))
	val o_sum      = Output(SInt((feature_width + weight_width).W))
  })

  val r_weight  = Reg(SInt(weight_width.W))
  val r_feature = Reg(SInt(feature_width.W))
  val r_mac     = Reg(SInt((feature_width + weight_width).W))

  when (io.i_loading === true.B) {
    r_weight := io.i_weight  // loading 동작일 때만 PE의 weight를 갱신한다.
  }
  .otherwise {
    r_weight := r_weight
  }
  r_feature    := io.i_feature
  r_mac        := (io.i_feature * r_weight) + io.i_sum

  io.o_feature := r_feature // PE에 저장된 feature는 출력에 assign
  io.o_weight  := r_weight  // PE에 저장된 weight 또한 동일
  io.o_sum     := r_mac 
}

object obj_wsPE extends App{
  (new chisel3.stage.ChiselStage).emitVerilog(new wsPE(8,8))
}
