// sbt run
// sbt "runMain wsSA.obj_wsSA"
package wsSA

import chisel3._
import wsPE.{wsPE}  //wsPE(앞)이라는 package에서 + wsPE(뒤)라는 class import

class wsSA(feature_width:Int, weight_width:Int, array_size:Int) extends Module {
  val io = IO (new Bundle {
    val i_loading  = Input(Bool()) 
    val i_feature  = Input(Vec(array_size, SInt(feature_width.W)))
	val i_weight   = Input(Vec(array_size, SInt(weight_width.W)))
	val o_result   = Output(Vec(array_size, SInt((feature_width + weight_width).W)))
  })
  val init_sum = Reg(Vec(array_size, SInt((feature_width + weight_width).W)))
  val sys_arr  = Seq.fill(array_size, array_size)(Module(new wsPE(feature_width, weight_width)))

  for (i <- 0 until array_size) {
    for (j <- 0 until array_size) {
	  sys_arr(i)(j).io.i_loading := Mux(io.i_loading === true.B, true.B, false.B)
	  if (i == 0) {
	    sys_arr(i)(j).io.i_weight  := io.i_weight(j)
	    sys_arr(i)(j).io.i_sum     := init_sum(j)     
      }
	  else {
	    sys_arr(i)(j).io.i_weight  := sys_arr(i-1)(j).io.o_weight
	    sys_arr(i)(j).io.i_sum     := sys_arr(i-1)(j).io.o_sum     
      }
	  if (j == 0) 
        sys_arr(i)(j).io.i_feature := io.i_feature(i)
	  else
	    sys_arr(i)(j).io.i_feature := sys_arr(i)(j-1).io.o_feature
    }
    io.o_result(i) := sys_arr(array_size-1)(i).io.o_sum  // 시스템 sum 출력에 마지막 벡터 sum출력을 삽입 
  }
}
  
object obj_wsSA extends App{
  (new chisel3.stage.ChiselStage).emitVerilog(new wsSA(8,8,5))
}

