class Calculator
    def add ( x , y )
      x + y
    end
    def substract ( x, y )
      x - y 
    end
end

def verify ( expected, actual, message )
  if actual == expected 
    print "\033[32m#{message} passed\033[0m\n"
  else
    print "Expected: #{expected} but got: #{actual} - #{message} \n"
    print "\e[31m#{message} failed.\e[0m\n"
  end
end

calculator = Calculator.new
result = calculator.add( 1, 1 )
verify( 2, result, 'Addition' )
result2 = calculator.substract(2,1)
verify( 2, result2, 'Substraction' )



