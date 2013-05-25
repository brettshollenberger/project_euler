# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then
# there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words,
# how many letters would be used?

# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains
# 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out
# numbers is in compliance with British usage.

require 'rspec'
require_relative '../lib/euler17'

describe 'Verbalizer' do

  before(:each) do
    @verbalizer = Verbalizer.new
  end

  context "it stringifies" do
    it "returns string versions of numbers" do
      @stringify = @verbalizer.stringify(1..2)
      expect(@stringify).to eql(["1", "2"])
    end

    it "returns the length of each string" do
      @length_machine = @verbalizer.length_machine(1..2)
      expect(@length_machine).to eql([["1", "2"], [1, 1]])
    end
  end

  context "it wordifies" do
    it "returns the words for numbers given below ten" do
      @wordify_one_to_nine = @verbalizer.wordify(1..2)
      expect(@wordify_one_to_nine).to eql(["one", "two"])
    end

    it "returns the words for numbers given in the teens" do
      @wordify_ten_to_nineteen = @verbalizer.wordify(10..12)
      expect(@wordify_ten_to_nineteen).to eql(["ten", "eleven", "twelve"])
    end

    it "returns the words for numbers given above 19" do
      @wordify_twenties = @verbalizer.wordify(20..22)
      expect(@wordify_twenties).to eql(["twenty", "twentyone", "twentytwo"])
    end

    it "returns the words for numbers given above 99" do
      @wordify_hundreds = @verbalizer.wordify(100..102)
      expect(@wordify_hundreds).to eql(["onehundred", "onehundredandone", "onehundredandtwo"])
    end

    it "returns the highest numbers in properly formatted english" do
      @wordify_thousands = @verbalizer.wordify(999..1000)
      expect(@wordify_thousands).to eql(["ninehundredandninetynine", "onethousand"])
    end
  end

  context "it countifies" do
    it "can count the six letters between the written forms of one and two" do
      @count_one_to_two = @verbalizer.countify(1..2)
      expect(@count_one_to_two).to eql(6)
    end

    it "can solve the puzzle" do
      @solve_it = @verbalizer.countify(1..1000)
      expect(@solve_it).to eql(21124)
    end
  end

end
