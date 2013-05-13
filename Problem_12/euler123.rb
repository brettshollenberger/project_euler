require "Prime"

a = (1..5000).to_a

def divisors_of(num)
  (1..num).collect { |n| [n, num/n] if ((num/n) * n) == num}.compact
end

many_divisors = 0

triangles = Enumerator.new do |yielder|
  i = 1
  loop do
    yielder.yield i * (i + 1) / 2
    i += 1
  end
end

triangles.each do |t|
  x = divisors_of(t)
  y = []
  x.each do |row|
    row.each do |num|
      y.push(num)
    end
  end
  y.uniq!
  if y.length > 200
    print y, t
    break
  end
end
