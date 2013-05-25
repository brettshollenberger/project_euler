def collatz(n)
  return n/2 if n%2 == 0
  return 3*n + 1
end

def chainer(num)
  the_chain = []
  while num != 1
    the_chain.push(num)
    num = collatz(num)
  end
  return the_chain
end

current_longest = []

(500000..840000).each do |num|
  chain = chainer(num)
  if chain.length > current_longest.length
    current_longest = chain
  end
  print "The current longest chain started with #{current_longest[0]} and is #{current_longest.length} numbers long."
end


