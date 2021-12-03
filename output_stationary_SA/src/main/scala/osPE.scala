package osPE

import chisel3._

class osPE(feature_width:Int, weight_width:Int) extends Module {
  val io = IO (new Bundle {
    val i_feature  = Input(SInt(feature_width.W))
	val i_weight   = Input(SInt(weight_width.W))
	val o_feature  = Output(SInt(feature_width.W))
	val o_weight   = Output(SInt(weight_width.W))
	val o_sum      = Output(SInt((feature_width + weight_width).W))
  })

  val r_feature = Reg(SInt(feature_width.W))
  val r_weight  = Reg(SInt(weight_width.W))
  val r_mac     = Reg(SInt((feature_width + weight_width).W))

  r_feature    := io.i_feature
  r_weight     := io.i_weight
  r_mac        := r_mac + (io.i_feature * io.i_weight) 

  io.o_feature := r_feature
  io.o_weight  := r_weight 
  io.o_sum     := r_mac 
}
