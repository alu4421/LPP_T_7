require '../complejos.rb'
require 'test/unit'


class Complejo_Test < Test::Unit::TestCase
  def setup
    @c1 = Complejo_HYM.new(4,3)
    @c2 = Complejo_HYM.new(1,1)
  end
  
  def test_simple
  
    assert_equal("(4+3i)", @c1.to_s)				#Comprobamos que se muestre correctamente c1
    assert_equal("(1+1i)", @c1.to_s) 				#Comprobamos que se muestre correctamente c1
    assert_equal("(5+4i)", (@c1+@c2).to_s)			#Comprobamos que se sume correctamente c1+c2
    assert_equal("(3+2i)", (@c1-@c2).to_s)			#Comprobamos que se reste correctamente c1-c2
    assert_equal("(1+7i)", (@c1 * @C2).to_s)		#Comprobamos que multiplique correctamente c1*c2
    assert_equal("(3.5+0.5i)", (@c1 / @C2).to_s)	#Comprobamos que divida correctamente c1/c2
    assert_equal("(8+6i)",(@c1 & 2).to_s)			#Comprobamos que se multiplique correctamente c1*2

  end


end 
