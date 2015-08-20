require 'minitest/autorun'
require_relative 'calculator'
require_relative 'aaa'

class TestCalculator < Minitest::Test
  def test_addition 
    Given { @calculator = Calculator.new }
    When { @result = @calculator.add(3,2) }
    Then { assert_equal 5, @result }
  end
  def test_substraction
    Given { @calculator = Calculator.new }
    When { @result = @calculator.substract(3,2) }
    Then { assert_equal 1, @result }
  end
  def test_division
    Given { @calculator = Calculator.new }
    When { @result = @calculator.division(6,2) }
    Then { assert_equal 3, @result }
  end
  def test_multi
    Given { @calculator = Calculator.new }
    When { @result = @calculator.multiply(3,2) }
    Then { assert_equal 6, @result }
  end
end
