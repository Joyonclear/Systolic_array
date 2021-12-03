// sbt "testOnly osSA.tb"
// sbt "testOnly osSA.tb -- -DwriteVcd=1" 
package osSA

import org.scalatest._
import chiseltest._
import chisel3._

class tb extends FlatSpec with ChiselScalatestTester with Matchers{
  val fea = Array(1.S, 0.S, 0.S, 0.S, 0.S, 
				  2.S, 6.S, 0.S, 0.S, 0.S, 
				  3.S, 7.S, 11.S, 0.S, 0.S, 
				  4.S, 8.S, 12.S, 16.S, 0.S, 
				  5.S, 9.S, 13.S, 17.S, 21.S, 
				  0.S, 10.S, 14.S, 18.S, 22.S, 
				  0.S, 0.S, 15.S, 19.S, 23.S, 
				  0.S, 0.S, 0.S, 20.S, 24.S,
				  0.S, 0.S, 0.S, 0.S, 25.S, 
				  0.S, 0.S, 0.S, 0.S, 0.S, 
				  0.S, 0.S, 0.S, 0.S, 0.S, 
				  0.S, 0.S, 0.S, 0.S, 0.S, 
				  0.S, 0.S, 0.S, 0.S, 0.S, 
				  0.S, 0.S, 0.S, 0.S, 0.S, 
				  0.S, 0.S, 0.S, 0.S, 0.S)  

  val wea = Array(8.S, 0.S, 0.S, 0.S, 0.S, 
		          19.S, 7.S, 0.S, 0.S, 0.S, 
				  25.S, 15.S, 8.S, 0.S, 0.S, 
				  14.S, 20.S, 10.S, 5.S, 0.S, 
				  7.S, 26.S, 5.S, 3.S, 6.S, 
				  0.S, 8.S, 22.S, 31.S, 1.S, 
				  0.S, 0.S, 24.S, 28.S, 30.S, 
				  0.S, 0.S, 0.S, 29.S, 36.S, 
				  0.S, 0.S, 0.S, 0.S, 9.S, 
				  0.S, 0.S, 0.S, 0.S, 0.S,
				  0.S, 0.S, 0.S, 0.S, 0.S, 
				  0.S, 0.S, 0.S, 0.S, 0.S, 
				  0.S, 0.S, 0.S, 0.S, 0.S, 
				  0.S, 0.S, 0.S, 0.S, 0.S, 
				  0.S, 0.S, 0.S, 0.S, 0.S)  

  behavior of "anything_ok_module_name"
    it should "output stationary system array" in {
	  test(new osSA(8,8,5)) { dut =>  
		println("\n###########################")
		
		println("\n### 00 WEIGHT & FEATURE SHIFTING ###")
		for (i <- 0 until 13) {
		  for (j <- 0 until 5) {
            dut.io.i_feature(j).poke(fea(j+(5*i)))
            dut.io.i_weight(j).poke(wea(j+(5*i)))
		  }
		  dut.clock.step(1)
		}

/*
		println("\n### 03 RESULT PRINTING ###")
		for (j <- 1 to 9){
		  println("$ No."+j+" cycle =>")
		  for (i <- 0 until 5)
		    println("$ Result of index("+i+") = "+ dut.io.o_result(i).peek().toString)
		  dut.clock.step(1)
		  println("")}
*/
		println("############################\n")
	  }
	}
}

