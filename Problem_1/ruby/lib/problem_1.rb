class Array
  def sum
    self.inject(0) { |x, y| x + y }
  end
end

def multiples(r)
  r.to_a.map { |x| x if x % 3 == 0 || x % 5 == 0 }.compact.sum
end
