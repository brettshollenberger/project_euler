class Array
  def sum
    self.inject { |x, y| x + y }
  end
end

def fibber(num)
  fibs = [1, 1]
  fibs.push(fibs[-1] + fibs[-2]) while fibs[-1] < num
  fibs.map { |x| x if x % 2 == 0 }.compact.sum
end
