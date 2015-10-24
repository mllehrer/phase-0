# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Kris Bies.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum of array
# Steps to solve the problem.
# make array
# add the first number to the second number
# add the third number to the first and second
# and so on
# output sum of numbers in array
# I think we can use a version of our factorial solution for this


# 1. total initial solution
def total(array)
  sum = 0
  array.each do |x| sum += x
  end
  return sum
end



# 3. total refactored solution
#Coming into this one from the factorial challenge (which I left unfinished but felt I was on the right track) made it easy to solve it in a small space. I don't think it needs much refactoring.
#Solving this one made me figure out what was wrong with my factorial code, so I was able to fix that one!


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array
# Output: Gramatically correct sentence made of array elements
# Steps to solve the problem.
# Make sure all elements are strings
# Capitalize the first element
# Add the elements together with spaces in between them (I know .join will do this but I want to see if I can do it without built-in methods beyond arithmetic)
# Put a period at the end


# 5. sentence_maker initial solution
def sentence_maker(array)
  n_array = array.map { |n| n.to_s }
  n_array[0].capitalize!
  string = n_array * " "
  string + "."
end

sentence_maker(["testing", "in", "terminal"])

#I am so proud of not using any built-in methods for this
#When I finished this I felt actual tears of joy.




# 6. sentence_maker refactored solution
def sentence_maker(array)
  string = array.join(" ")
string.capitalize!
string + "."
end

