# n! means n  (n  1)  ...  3  2  1

# For example, 10! = 10  9  ...  3  2  1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

class FactorialDigitSum
  attr_accessor :factorial, :stringify, :sumdigits
  def initialize(range)
    @factorial = range.inject(:*) || 1
    @stringify = @factorial.to_s
    @sumdigits = 0
    sumitup
  end

  def sumitup
    index = 0
    while index < @stringify.length
      @sumdigits += @stringify[index].to_i
      index += 1
    end
  end
end
