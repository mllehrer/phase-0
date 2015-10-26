# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  t = array_1.count + array_2.count
  array_3 = Array.new(t)
  array_3 = array_1 + array_2
end

#Pseudocode
#Input: two arrays
# Output: one array
# Map contents of one array into other array
# return result
 #Or not
# convert them all to strings
# and then make them into an array again?
#no it wants numbers to stay numbers
# Can I add arrays
# Is that a thing
# IT IS A THING
# !!!!!!!!!!!!!!!!!
#Refactor: Do I need to make a container array first?
def array_concat(array_1, array_2)
 array_1 + array_2
end

#Nope