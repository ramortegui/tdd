class FizzBuzzEngine
  LOOKUP = { 3 => 'Fizz', 5 => 'Buzz', '3_and_5' => 'FizzBuzz' }
  def initialize(n)
    @n = n
  end

  def value
    return LOOKUP['3_and_5'] if multiple_of_three_and_five 
    return LOOKUP[3] if multiple_of(3)
    return LOOKUP[5] if multiple_of(5)
  end

  private

  def multiple_of_three_and_five
    multiple_of(3) && multiple_of(5)
  end

  def multiple_of(x)
    @n.modulo(x).zero?
  end
end
