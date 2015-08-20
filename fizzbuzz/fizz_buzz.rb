require_relative 'fixnum_extensions'
class FizzBuzz
  using FixnumExtensions
  def numbers
    (1..100).to_a 
  end
  def sequence
    numbers.collect do |x|
      x.fizz_buzz
    end
  end
  def transform(n)
    pairs = {}
    (1..100).each do |x|
      pairs[x] = x
    end
    result = {}
    pairs.keys.each do |key|
      result [key] = key.fizz_buzz
    end
    result[n]
  end
  private
  def multiple_of(n , x)
    x % n == 0
  end
end
