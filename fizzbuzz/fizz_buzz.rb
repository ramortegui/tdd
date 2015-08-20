require_relative 'fizz_buzz_engine'
class FizzBuzz
  def numbers
    (1..100).to_a 
  end
  def sequence
    numbers.collect do |x|
        fbe = FizzBuzzEngine.new(x)
        fbe.value ? fbe.value : x
    end
  end
  private
  def multiple_of(n , x)
    x % n == 0
  end
end
