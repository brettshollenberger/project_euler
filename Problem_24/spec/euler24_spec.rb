# A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

# 012   021   102   120   201   210

# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

require 'rspec'
require_relative '../lib/euler24'

describe Permutator do
  before(:each) do
    @permutator = Permutator.new
  end

  it "can calculate the millionth permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8, and 9" do
    expect(@permutator.millionth_permutation).to eql([2,7,8,3,9,1,5,4,6,0])
  end

end
