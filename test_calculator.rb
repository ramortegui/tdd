require 'minitest/autorun'

class Calculator
  def add(x, y)
    x + y
  end
  def substract(x,y)
    x - y
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
end

