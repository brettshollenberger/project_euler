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

class Integer
  def leap_year?
    return true if self%4 == 0 unless self%400 == 0
    false
  end
end

class Calendar
  attr_accessor :months, :years, :days, :sunday, :first_sundays

  def initialize
    @months = {January: 31, February: 28, March: 31, April: 30, May: 31, June: 30,
      July: 31, August: 31, September: 30, October: 31, November: 30, December: 31}
    @years = (1901..2000).to_a
    @days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    @sunday = 7
    @first_sundays = []
  end

  def check_if_sunday_is_the_first
    @years.each do |year|
      @months.each do |month, days|
        if @sunday == 1
          @first_sundays.push([month, year])
        end
        if month == :February
          if year.leap_year?
            days = 29
          end
        end
        while @sunday < days
          @sunday += 7
        end
        @sunday = @sunday - days
      end
    end
  end

  def answer
    @first_sundays.length
  end
end
