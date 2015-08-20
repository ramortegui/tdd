module FixnumExtensions
  refine Fixnum do
    def fizz_buzz
      multiple_of(3) && multiple_of(5) && (return 'FizzBuzz')
      multiple_of(3) && (return 'Fizz' )
      multiple_of(5) && (return 'Buzz' )
      self
    end

    def multiple_of(n)
      self.modulo(n).zero?
    end
  end
end
