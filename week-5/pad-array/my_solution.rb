# Pad an Array

# I worked on this challenge by myself

# I spent 1 hour on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#An array, an integer, and an optional argument
# What is the output? (i.e. What should the code return?)
#An array that should be a length equal to the integer, with extra elements of either nil or a given value.
# What are the steps needed to solve the problem?
#If the array's length is greater than the minimum size,
# => Return the array
#Else, make a pad that is (minimum-size - array's length) long
# => fill that pad with the required values
# => add the pad to the array
#Return the padded array


# 1. Initial Solution
# def pad!(array, min_size, value = nil)
#   if array.length >= min_size
#     p array
#   else
#   pad = Array.new(min_size - array.length)
#   pad.fill(value)
#   array + pad
#   p array
# end
# end

# def pad(array, min_size, value = nil)
#   new_array = Array.new(array.length)
#   new_array = array
#   if array.length >= min_size
#     p array
#     else
#   pad = Array.new(min_size - array.length)
#   pad.fill(value)
#   my_array = new_array + pad
#   p my_array
#   end
# end

# 3. Refactored Solution
#I can't figure out how to make it nondestructive, so I'm looking up a #method to see if there's a way to make a copy of the array, and then #make all the changes to that array while leaving the other one alone.
#Which there is. It's .dup like for duplicate but it kind of creeps me #out because of that terrifying green guy in Marvel's X-force.
#Which is not at all relevant.

def pad!(array, min_size, value = nil)
  if array.length >= min_size
    p array
  else
  pad = Array.new(min_size - array.length)
  pad.fill(value)
  array + pad
  p array
end
end

def pad(array, min_size, value = nil)
 copy_array = array.dup
  if array.length >= min_size
    p copy_array
    else
  pad = Array.new(min_size - array.length)
  pad.fill(value)
  copy_array = copy_array + pad
  p copy_array
  end
end


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
#I hope so. I like coding because it breaks things into a series of #small decisions. Some things must be done first before the next follow.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#I had trouble finding a way to actually fill the array once I had #made it. I got lucky in that "fill" ended up being a method. I would #like to know more about how it works, though.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#Ugh, no. I couldn't get pad to be non-destructive. There was no good way to make a dummy array on which to work the changes while leaving the extant array alone. When I was researching a way to make a copy, I learned that it's because that when you assign a value to a variable, you're just re-assigning the object id--but it's still the same id! Since two objects can't have the same id, you end up changing your array.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
#Yes, the .dup method enabled me to make a copy with a new id on which #to work.

# How readable is your solution? Did you and your pair choose descriptive variable names?
#I hope it's readable! I like to choose descriptive variable names
#because sometimes I myself am forgetful.

# What is the difference between destructive and non-destructive methods in your own words?
# A destructive method works directly on the object passed to it and
#returns the changed object. A non-destructive method returns a #changed version of the object while leaving the original object #unchanged.