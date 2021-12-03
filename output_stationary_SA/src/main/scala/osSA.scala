// sbt run
// sbt "runMain osSA.obj_osSA"
package osSA

import chisel3._
import osPE.{osPE}  //wsPE(앞)이라는 package에서 + wsPE(뒤)라는 class import

class osSA(feature_width:Int, weight_width:Int, array_size:Int) extends Module {
  val io = IO (new Bundle {
    val i_feature  = Input(Vec(array_size, SInt(feature_width.W)))
	val i_weight   = Input(Vec(array_size, SInt(weight_width.W)))
	val o_result   = Output(Vec(array_size, Vec(array_size, SInt((feature_width + weight_width).W))))
  })
  val sys_arr  = Seq.fill(array_size, array_size)(Module(new osPE(feature_width, weight_width)))

  for (i <- 0 until array_size) {
    for (j <- 0 until array_size) {
	  if (i == 0) 
	    sys_arr(i)(j).io.i_weight  := io.i_weight(j)
	  else 
	    sys_arr(i)(j).io.i_weight  := sys_arr(i-1)(j).io.o_weight
	 
	  if (j == 0) 
        sys_arr(i)(j).io.i_feature := io.i_feature(i)
	  else
	    sys_arr(i)(j).io.i_feature := sys_arr(i)(j-1).io.o_feature
    
    io.o_result(i)(j) := sys_arr(i)(j).io.o_sum  
	}
  }
}
  
object obj_osSA extends App{
  (new chisel3.stage.ChiselStage).emitVerilog(new osSA(8,8,5))
}

