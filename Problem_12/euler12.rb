require "Prime"

a = (2080..5000).to_a

def divisors_of(num)
  (1..num).collect { |n| [n, num/n] if ((num/n) * n) == num}.compact
end

many_divisors = 0

triangle_number = 2162160
a.each do |num|
  if num % 100 == 0
    puts "Adding #{num} to previous triangle number, #{triangle_number}"
  end
  triangle_number += num

  tmp = divisors_of(triangle_number)
  num_divisors = []
  tmp.each do |array|
    array.each do |num|
      num_divisors.push(num)
    end
  end

  $divisor_length = 300

  num_divisors.uniq!.sort!
  if num_divisors.length > $divisor_length
    puts "#{num} added before finding triangle number"
    many_divisors = triangle_number
    break
  end
end

print "Triangle number #{many_divisors} has #{$divisor_length} divisors"
