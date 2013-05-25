# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938  53 = 49714.

# What is the total of all the name scores in the file?

require 'rspec'
require_relative '../lib/euler22'

describe NameSort do
  before(:each) do
    @namesort = NameSort.new
  end

  it "can sort the names" do
    expect(@namesort.first).to eql("AARON")
  end

  it "can evaluate letter" do
    expect(@namesort.letters[:A]).to eql(1)
  end

  it "can evaluate the letterscore of a name" do
    @namesort.name_letters_eval("AARON")
    expect(@namesort.namescore[:AARON]).to eql(49)
  end

  it "can evaluate the position score of a name" do
    @namesort.position_score
    expect(@namesort.namescore[:AARON]).to eql(49)
  end

  it "can solve the puzzle" do
    @namesort.score
    expect(@namesort.total).to eql(871198282)
  end

end
