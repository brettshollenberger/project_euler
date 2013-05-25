# You are given the following information, but you may prefer to do some research for yourself.

# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

require 'rspec'
require_relative '../lib/euler19'

describe Calendar do
  before(:each) do
    @calendar = Calendar.new
  end

  it "knows the days in the months" do
    expect(@calendar.months[:January]).to eql(31)
  end

  it "knows how to calculate leap years" do
    expect(1900.leap_year?).to eql(true)
    expect(1903.leap_year?).to eql(false)
    expect(1904.leap_year?).to eql(true)
    expect(1906.leap_year?).to eql(false)
    expect(2000.leap_year?).to eql(false)
  end

  it "knows the year range" do
    expect(@calendar.years).to include(1901, 1902)
  end

  it "knows if a Sunday was the first" do
    @calendar.check_if_sunday_is_the_first
    expect(@calendar.first_sundays).to include([:April, 1901])
  end

  it "knows how many Sundays were the first" do
    @calendar.check_if_sunday_is_the_first
    expect(@calendar.answer).to eql(172)
  end

end
