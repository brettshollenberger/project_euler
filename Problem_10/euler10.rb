# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require "prime"

class Array
  def sum
    sum = 0
    self.each do |num|
      sum += num
    end
    return sum
  end
end

primes = Prime.take_while { |p| p < 2000000 }

print primes.sum

