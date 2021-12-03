// sbt "testOnly osPE.tb"
// sbt "testOnly osPE.tb -- -DwriteVcd=1" 
package osPE

import org.scalatest._
import chiseltest._
import chisel3._

class tb extends FlatSpec with ChiselScalatestTester with Matchers{

  behavior of "anything_ok_module_name"
    it should "output stationary processing element" in {
	  test(new osPE(8,8)) { dut =>  
		dut.clock.step(5)

		println("\n###########################")
        dut.io.i_weight.poke(-9.S)
        dut.io.i_feature.poke(5.S)
		dut.clock.step(1)
		println("$ Result = "+ dut.io.o_sum.peek().toString)
		println("############################\n")
	  }
	}
}

