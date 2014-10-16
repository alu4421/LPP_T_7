require './complejos.rb'
require 'test/unit'


class Complejo_Test < Test::Unit::TestCase
  def setup
    @c1 = Complejo_HYM.new(4,3)
    @c2 = Complejo_HYM.new(1,1)
  end
  
  def tests_basicos
  
    assert_equal("(4+3i)", @c1.to_s)		#Comprobamos que se muestre correctamente c1
    assert_equal("(1+1i)", @c1.to_s) 		#Comprobamos que se muestre correctamente c1
    assert_equal("(5+4i)", (@c1+@b).to_s)	#Comprobamos que se sume correctamente c1+c2
    assert_equal("(3+2i)", (@c1-@b).to_s)	#Comprobamos que se reste correctamente c1-c2
  end


end 
