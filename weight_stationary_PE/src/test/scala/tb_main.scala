// sbt "testOnly wsPE.tb"
// sbt "testOnly wsPE.tb -- -DwriteVcd=1" 
package wsPE

import org.scalatest._
import chiseltest._
import chisel3._

class tb extends FlatSpec with ChiselScalatestTester with Matchers{
  behavior of "anything_ok_module_name"
    it should "weight stationary processing element" in {
	  test(new wsPE(8,8)) { dut =>  
		println("\n###########################")
        println("### 01 WEIGHT LOADING ###")
		dut.io.i_loading.poke(true.B)
        dut.io.i_weight.poke(-6.S)
		dut.clock.step(1)

		println("\n### 02 FEATURE SHIFTING ###")
		dut.io.i_loading.poke(false.B)
        dut.io.i_feature.poke(9.S)
		dut.clock.step(1)

		println("\n### 03 RESULT PRINTING ###")
		println("$ Result = "+ dut.io.o_sum.peek().toString)
		dut.clock.step(1)
		println("############################\n")
	  }
	}
}

