require 'minitest/autorun'
require_relative 'fizz_buzz'

class TestFizzBuzz < MiniTest::Test
  def test_generate_number_from_1_to_100
    game = FizzBuzz.new
    result = game.numbers
    assert_equal((1..100).to_a,result,'number 1 to 100')
  end
  def test_generate_fizz_for_multiples_of_3
    game = FizzBuzz.new
    result = game.transform(3)
    assert_equal('Fizz',result,"Checking the number 3")
  end

  def test_generate_fizz_for_multiples_of_5
    game = FizzBuzz.new
    result = game.transform(5)
    assert_equal('Buzz',result,"Checking the number 5")
  end
  def test_genrate_fizz_buzz_for_multiples_of_3_and_5
    game = FizzBuzz.new
    result = game.transform(15)
    assert_equal('FizzBuzz',result,"Checking the number 15")

  end

  def test_generate_number_is_not_multiple
    game = FizzBuzz.new
    result = game.transform(1)
    assert_equal(1,result,"Checking the value 0 ")
  end
  def test_print_fizz_for_multiples_of_4
    game = FizzBuzz.new

  end
end
