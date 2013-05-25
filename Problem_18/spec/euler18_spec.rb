require 'rspec'
require_relative '../lib/euler18'

describe Fancy do
  before(:each) do
    @fancy = Fancy.new
    @fancy.set_legal_columns
  end

  it "knows its next legal moves at the beginning of the game" do
    expect(@fancy.legal_columns).to eql([0, 1])
  end

  it "can calculate the value its legal moves" do
    expect(@fancy.one_row_down).to eql([95, 64])
  end

  it "can determine which route will lead to a future superior outcome" do
    expect(@fancy.whatif).to eql('b')
  end

  it "makes dem choices" do
    expect(@fancy.make_a_choice).to eql([139, 1, 1])
  end

  it "plays the game" do
    expect(@fancy.play_the_game).to eql([811, 5, 12])
  end

end
