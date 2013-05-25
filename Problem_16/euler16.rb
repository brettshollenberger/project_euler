# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

def power_digit_sum(num)
  x = num.to_s
  index = 0
  total = 0
  while index < x.length
    total += x[index].to_i
    index += 1
  end
  print total
end

power_digit_sum(2**1000)


