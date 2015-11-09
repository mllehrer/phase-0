# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: An object that retursn one of those strings, chosen at random
# Steps:
#Create an array of strings
#Raise an error If the array is empty
#Sort those strings at random
#Output the first string if "roll" is called
#Output the array's count if "sides" is called


# Initial Solution

class Die
def initialize(sides)
  if sides.empty?
    raise ArgumentError.new("Hey, put some labels on that die!")
  end
    @sides = sides
    @side_count = sides.count
  end


  def sides
    @side_count
  end

  def roll
    rolled = @sides.shuffle
    rolled[0]
  end
end


# Refactored Solution

#I can't see any way to improve this. I'm glad someone suggested "shuffle" to me last week as an improvement on my accountability groups challenge because that method worked really nicely here!






# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#I learned that I didn't have to write "return" to make something return, so that was great. The organization was exactly the same. I had to use a different method to randomize the array because it was strings, not integers.
# What does this exercise teach you about making code that is easily changeable or modifiable?
#Havign a good, simple framework makes code a lot easier to work with and run.
# What new methods did you learn when working on this challenge, if any?
#I got to try out shuffle! Very happy about that.
# What concepts about classes were you able to solidify in this challenge?
#I've been reading Practical Object-Oriented Design in Ruby, and for the most part it's been very over my head because I didn't have any experience making any classes. I'm glad to start working on them.
