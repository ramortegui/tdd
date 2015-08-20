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
    result = game.sequence
    assert_equal('Fizz',result[2],"Checking the number 3")
  end

  def test_generate_fizz_for_multiples_of_5
    game = FizzBuzz.new
    result = game.sequence
    assert_equal('Buzz',result[4],"Checking the number 5")
  end
  def test_genrate_fizz_buzz_for_multiples_of_3_and_5
    game = FizzBuzz.new
    result = game.sequence
    assert_equal('FizzBuzz',result[14],"Checking the number 15")

  end
  def test_print_fizz_for_multiples_of_4
    game = FizzBuzz.new

  end
end
