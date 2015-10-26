# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  if lower_bound == upper_bound
    p list_of_integers.count
  end
 n = list_of_integers.map { |e|
  if e > upper_bound
   list_of_integers - [e]
  elsif e < lower_bound
    list_of_integers - [e]
  else
    e
  end
   }
if upper_bound < lower_bound
  return 0
end
p n
end

#pseudocode
# check to see if an element is between bounds
# if it is not, delete it from the array
#   measure the array again.
#I'm turning this in
#because I have no idea how to remove the extra array in my new array
#because I don't know why it's there.
#why is it there

#Refactoring with methods
def count_between(list_of_integers, lower_bound, upper_bound)
  list_of_integers.delete_if{ |i| i < lower_bound || i > upper_bound }
  p list_of_integers.count
end