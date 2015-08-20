require 'minitest/autorun'

class Calculator
  def add(x, y)
    x + y
  end
  def substract(x,y)
    x - y
  end
  def multi(x,y)
    x * y
  end
  def division(x,y) 
    x / y
  end
end

class TestCalculator < MiniTest::Test
  def test_addition
    calculator = Calculator.new
    result = calculator.add(3,2)
    assert_equal 5, result
  end

  def test_substraction
    calculator = Calculator.new
    result = calculator.substract(3,2)
    assert_equal 1, result
  end
  def test_multi
    calculator = Calculator.new
    result = calculator.multi(4,3)
    assert_equal 12, result
  end
  def test_division
    calculator = Calculator.new
    result = calculator.division(6,3)
    assert_equal 2,result
  end
end

