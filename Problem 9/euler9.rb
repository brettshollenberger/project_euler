# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

a = (1..500).to_a

holder = []

a.each do |num_1|
  a.each do |num_2|
    a.each do |num_3|
      if (num_1*num_1) + (num_2*num_2) == (num_3*num_3) && num_3 > num_2 && num_2 > num_1
        holder.push([num_1, num_2, num_3])
      end
    end
  end
end

final_array = []

holder.each do |array|
  if array[0] + array[1] + array[2] == 1000
    final_array.push(array[0], array[1], array[2])
  end
end

product = 1
final_array.each do |num|
  product *= num
end

print product
