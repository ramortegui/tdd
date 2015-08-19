class Calculator
    def add ( x , y )
      x + y
    end
    def substract ( x, y )
      x - y 
    end
    def multiply ( x, y )
      x * y
    end
    def division ( x, y )
      x / y
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
verify( 1, result2, 'Substraction' )
result3 = calculator.multiply( 4, 4 )
verify( 16, result3, 'multiplication' )
result4 = calculator.division( 14, 2 )
verify( 7, result4, 'division' )

