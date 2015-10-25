# Calculate a Grade

# I worked on this challenge with Alicia Quezada.


# Your Solution Below
def get_grade(avg)
  if avg < 60
    return "F"
  elsif avg < 70
    return "D"
  elsif avg < 80
    return "C"
  elsif avg < 90
    return "B"
  else
    return "A"
  end
end


#
# Your previous Plain Text content is preserved below:
#
#
#
#Pseudocode
#Input: An integer between 0 and 100
#Output: A letter between A and F
#Seperate numbers into groups of
# x < 60 return F
#  60 <= x < 70 return D
#  70 <= x < 80 return C
# 80 <= x < 90 return B
# 90 <= x <= 100 return A