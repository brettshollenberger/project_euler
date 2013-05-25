# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then
# there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words,
# how many letters would be used?

# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains
# 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out
# numbers is in compliance with British usage.

class Verbalizer
  attr_accessor :one_to_nine, :ten_to_nineteen, :twenties_to_nineties, :hundred, :thousand, :words, :strings, :and

#============================================================================================================#
#========================================== Map Numbers to Words ============================================#
#============================================================================================================#

  def initialize
    @one_to_nine = ['', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
    @ten_to_nineteen = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',
      'seventeen', 'eighteen', 'nineteen']
    @twenties_to_nineties = ['', '', "twenty", "thirty", "forty", "fifty", "sixty", "seventy",
      "eighty", "ninety"]
    @hundred = 'hundred'
    @thousand = 'thousand'
    @and = 'and'
    @words = []
  end

#============================================================================================================#
#=========================================== Stringify Section ==============================================#
#============================================================================================================#

  def stringify(range)
    r = range.to_a
    @strings = []
    r.each do |num|
      @strings.push(num.to_s)
    end
    return @strings
  end

  def length_machine(range)
    @strings = stringify(range)
    string_lengths = []
    @strings.each do |string|
      string_lengths.push(string.length)
    end
    return @strings, string_lengths
  end

#============================================================================================================#
#============================================ Wordify Section ===============================================#
#============================================================================================================#

  def wordify(range)
    @strings, string_lengths = length_machine(range)
    (0..@strings.length).each do |index|
      if string_lengths[index] == 1
        wordify_ones(index)
      elsif string_lengths[index] == 2
        tens = wordify_tens(index, 0)
        @words.push(tens)
      elsif string_lengths[index] == 3
        hundreds = wordify_hundreds(index, 0)
        @words.push(hundreds)
      elsif string_lengths[index] == 4
        @words.push(@one_to_nine[strings[index][0].to_i] + @thousand)
      end
    end
    return @words
  end

  def wordify_ones(index)
    @words.push(@one_to_nine[@strings[index].to_i])
  end

  def wordify_tens(index, counter)
    if @strings[index][counter].to_i == 0
      if @strings[index][counter+1].to_i != 0
        return @one_to_nine[@strings[index][counter+1].to_i]
      else
        return ''
      end
    elsif @strings[index][counter].to_i == 1
      return @ten_to_nineteen[@strings[index][counter+1].to_i]
    elsif @strings[index][counter].to_i > 1
      return @twenties_to_nineties[@strings[index][counter].to_i]+@one_to_nine[@strings[index][counter+1].to_i]
    end
  end

  def wordify_hundreds(index, counter)
    if @strings[index][counter+1].to_i == 0 && @strings[index][counter+2].to_i == 0
      return @one_to_nine[@strings[index][counter].to_i] + @hundred
    end
    return  @one_to_nine[@strings[index][counter].to_i] + @hundred + @and + wordify_tens(index, counter+1)
  end

#============================================================================================================#
#=========================================== Countify Section ===============================================#
#============================================================================================================#

  def countify(range)
    wordify(range)
    flat = @words.flatten
    flat.join('').length
  end

end

