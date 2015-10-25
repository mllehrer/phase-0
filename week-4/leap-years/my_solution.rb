# Leap Years

# I worked on this challenge with Alicia Quezada.
def leap_year?(year)
  if year % 4 != 0
    p false
  elsif year % 400 == 0
    p true
elsif (year % 400 != 0) && (year % 100 == 0)
    p false
  else
    p true
  end
end


#Pseudocode
#Input: Integer
#Output: boolean
#If the input is not divisible by 4
#return false
#If the input is divisible by 400
#return true
#If the input is divisible by 100 but not by 400
#return false
#else
#return true