require_relative '../lib/problem_2'

describe "fibber" do
  it "returns the sum of even numbers in the fibonacci sequence" do
    expect(fibber(4000000)).to eql(4613732)
  end
end
