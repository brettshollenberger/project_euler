require_relative '../lib/problem_1'

describe "multiples" do
  it "returns the sum of multiples of 3 and 5 below 1000" do
    expect(multiples(1...1000)).to eql(233168)
  end
end
