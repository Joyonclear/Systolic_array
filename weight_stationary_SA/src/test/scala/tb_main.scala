// sbt "testOnly wsSA.tb"
// sbt "testOnly wsSA.tb -- -DwriteVcd=1" 
package wsSA

import org.scalatest._
import chiseltest._
import chisel3._

class tb extends FlatSpec with ChiselScalatestTester with Matchers{
  val fea = Array(1.S, 0.S, 0.S, 0.S, 0.S, 
				  6.S, 2.S, 0.S, 0.S, 0.S, 
				  11.S, 7.S, 3.S, 0.S, 0.S, 
				  16.S, 12.S, 8.S, 4.S, 0.S, 
				  21.S, 17.S, 13.S, 9.S, 5.S, 
				  0.S, 22.S, 18.S, 14.S, 10.S, 
				  0.S, 0.S, 23.S, 19.S, 15.S, 
				  0.S, 0.S, 0.S, 24.S, 20.S, 
				  0.S, 0.S, 0.S, 0.S, 25.S,
				  0.S, 0.S, 0.S, 0.S, 0.S)
 
  val wea = Array(8.S, 7.S, 8.S, 5.S, 6.S, 
				  19.S, 15.S, 10.S, 3.S, 1.S, 
				  25.S, 20.S, 5.S, 31.S, 30.S, 
				  14.S, 26.S, 22.S, 28.S, 36.S, 
				  7.S, 8.S, 24.S, 29.S, 9.S) 

  behavior of "anything_ok_module_name"
    it should "weight stationary system array" in {
	  test(new wsSA(8,8,5)) { dut =>  
		println("\n###########################")
        println("### 01 WEIGHT LOADING ###")
		dut.io.i_loading.poke(true.B)
		for (i <- 0 until 5){
		  for (j <- 0 until 5) 
            dut.io.i_weight(j).poke(wea(j+(5*(4-i))))
		  dut.clock.step(1)}


		println("\n### 02 FEATURE SHIFTING ###")
		dut.io.i_loading.poke(false.B)
		for (i <- 0 until 10){
		  for (j <- 0 until 5) 
            dut.io.i_feature(j).poke(fea(j+(5*i)))
		  dut.clock.step(1)}


		println("\n### 03 RESULT PRINTING ###")
		for (j <- 1 to 9){
		  println("$ No."+j+" cycle =>")
		  for (i <- 0 until 5)
		    println("$ Result of index("+i+") = "+ dut.io.o_result(i).peek().toString)
		  dut.clock.step(1)
		  println("")}
		println("############################\n")
	  }
	}
}

