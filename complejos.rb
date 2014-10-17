class Complejos_HYM

    attr_reader :real, :img
    #metodo inicializa el complejo
     def initialize(real, img)
        @real= real
        @img = img
     end         

     def to_s
        if @img > 0
          "#{@real}+#{@img}i"
        else
          "#{@real}#{@img}i" 
        end
     end

     def +(other)
        Complejos_HYM.new(@real + other.real, @img + other.img)
     end

     def -(other)
       Complejos_HYM.new(@real - other.real, @img - other.img)
     end

     def *(other)
       Complejos_HYM.new(@real*other.real-@img*other.img, @real*other.img+@img*other.real)
     end

end