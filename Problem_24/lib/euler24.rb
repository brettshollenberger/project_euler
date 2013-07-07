# A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the 
# digits 1, 2, 3 and 4. If all of the permutations_left are listed numerically or alphabetically, we call 
#it lexicographic order. The lexicographic permutations_left of 0, 1 and 2 are:

# 012   021   102   120   201   210

# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

class Permutator
  attr_accessor:final_perm, :permutations_left, :permutations_of_current_digit, :last_num, :start_time, :end_time, :elapsed
  def initialize
    @start_time = Time.now
    @permutations_left = 1000000
    @final_perm = []
    @permutations_of_current_digit = 9
    push_to_perm
    @last_num = 0
    while num_in_perm?(@last_num)
      @last_num += 1
    end
    @final_perm.push(@last_num)
    @end_time = Time.now
    @elapsed = @end_time - @start_time
    puts "#{final_perm.join('')} found in #{"%f" % elapsed} seconds."
  end

  def push_to_perm
    while @permutations_of_current_digit > 0
      calc_each_num(@permutations_of_current_digit)
      @permutations_of_current_digit -= 1
    end
  end

  def calc_each_num(perms)
    num = 0
    while @permutations_left - factorialize(perms) > 0
      @permutations_left = @permutations_left - factorialize(perms)
      num += 1
      while num_in_perm?(num)
        num += 1
      end
    end
    @final_perm.push(num)
  end

  def factorialize(permutations_left)
    (1..permutations_left).inject(:*)
  end

  def num_in_perm?(num)
    @final_perm.each do |in_the_perm|
      if num == in_the_perm
        return true
      end
    end
    return false
  end

end

permutator = Permutator.new

#2783915460 found in 0.000076 seconds.
