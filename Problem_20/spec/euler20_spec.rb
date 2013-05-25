require 'rspec'
require_relative '../lib/euler20'

describe FactorialDigitSum do
  before(:each) do
    @fds10 = FactorialDigitSum.new(1..10)
    @fds100 = FactorialDigitSum.new(1..100)
  end

  it "can calculate the factorial of a range" do
    expect(@fds10.factorial).to eql(3628800)
  end

  it "can sum the factorial's digits" do
    expect(@fds10.sumdigits).to eql(27)
  end

  it "can solve the puzzle" do
    expect(@fds100.sumdigits).to eql(648)
  end
end
