# Calculate the mode Pairing Challenge

# I worked on this challenge with John Dees and Pratik Shah

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

#find how many times an item appears - count
#associate the frequency with the item - hash
#return the item with the highest frequency

#Initial Solution

# def mode(array)
#   hash = Hash.new
#   array.each { |e| hash[e] = array.count(e) }
#   count = hash.sort_by{ |k, v| v }.last.last

#   modes = []
#   hash.each do |k, v|
#     if v == count
#       modes << k
#     end
#   end
#   p modes
# end

#  Refactored solution

def mode(array)
  hash = Hash.new
  array.each { |e| hash[e] = array.count(e) }
  count = hash.sort_by{ |k, v| v }.last.last

  modes = []
  hash.each { |k, v| modes << k if v == count }
  p modes
end

#  Driver TEST
p mode([1,2,2,3,3]) == [2,3]
# mode(["who", "what", "where", "who"])

#Reflection
# Which data structure did you and your pair decide to implement and why?
#A hash seemed to be the best way to put the value together with the frequency at which it occurred, so we used a hash.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#The pseudocode is starting to look a lot like just talking, but I think that's ok sometimes.
# What issues/successes did you run into when translating your pseudocode to code?
#we didn't have any trouble using our pseudocode since we had a good idea of what structures and methods we wanted to use.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#.last was a new one on me, but it makes a lot of sense. I'm glad that I got more practice with hashes because so far I had done a lot of reading but not a lot of anything else.