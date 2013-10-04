class Integer
  def palindrome?
    return self.to_s[0, self.to_s.length/2] == self.to_s[self.to_s.length/2, self.to_s.length]
      .reverse if self.to_s.length.even?
    return self.to_s[0, self.to_s.length/2] == self.to_s[self.to_s.length/2 + 1, self.to_s.length]
      .reverse if self.to_s.length.odd?
  end
end

def palindromer
  largest_product = 996004
  until largest_product.palindrome? 
    largest_product -= 998
  end
  return largest_product
end
