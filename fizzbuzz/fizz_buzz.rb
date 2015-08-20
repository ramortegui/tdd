class FizzBuzz
  def numbers
    (1..100).to_a 
  end
  def sequence
    numbers.collect do |x|
      if multiple_of(3, x) and multiple_of(5, x) 
        'FizzBuzz'
      elsif multiple_of(3, x)
        'Fizz'
      elsif multiple_of(5, x) 
        'Buzz'
      else
        x
      end
    end
  end
  private
  def multiple_of(n , x)
    x % n == 0
  end
end
