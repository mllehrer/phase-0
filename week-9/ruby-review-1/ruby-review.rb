# # I worked on this challenge [by myself, with:]
# # This challenge took me .5 hours.


# # Pseudocode
# # INPUT: An array of integers
# # OUTPUT: An array with some integers replaced by strings


# # Initial Solution

# def super_fizzbuzz(array)

# array.map! do |e|
#     if e % 15 == 0
#       e = "FizzBuzz"
#     elsif e % 3 == 0
#       e = "Fizz"
#     elsif e % 5 == 0
#       e = "Buzz"
#     else
#       e
#     end
#   end
# p array

# end

# Refactored Solution

def super_fizzbuzz(array)

array.map! do |e|
case
  when e % 15 == 0 then e = "FizzBuzz"
  when e % 3  == 0 then e = "Fizz"
  when e % 5  == 0 then e = "Buzz"
  else e
  end
end
p array
end




# Reflection
# What concepts did you review in this challenge?
#Array manipulation, flow control, case statements
# What is still confusing to you about Ruby?
#I'd like to learn some more enumerables and get more comfortable with nested arrays.
# What are you going to study to get more prepared for Phase 1?
# It's tomorrow, so I'll just keep trucking!