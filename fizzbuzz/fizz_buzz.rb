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
    sequence[n-1]
  end

  private
  def multiple_of(n , x)
    x % n == 0
  end
end
