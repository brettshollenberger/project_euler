# A palindromic number reads the same both ways. The largest palindrome 
# made from the product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

require_relative '../lib/problem_4'

describe "palindrome" do
  it "gets even numbered palindromes right" do
    expect(1001.palindrome?).to eql(true)
  end

  it "gets odd numbered palindromes right" do
    expect(10001.palindrome?).to eql(true)
  end

  it "gets even numbered non-palindromes right" do
    expect(1002.palindrome?).to eql(false)
  end

  it "gets odd numbered non-palindromes right" do
    expect(10002.palindrome?).to eql(false)
  end
end

describe "palindromer" do
  it "returns the largest palindrome product" do
    expect(palindromer).to eql(906609)
  end
end
