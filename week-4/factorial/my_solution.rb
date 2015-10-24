# Factorial

# I worked on this challenge with: Kris Bies (Chicago).

#Pseudocode

#Input: number
#Output: number(number-1...number-(n-1))
#while i < n
#i = 1
# i += 1
#n * n-i
# Your Solution Below
def factorial(number)
  if number == 0
    return 1
  elsif number == 1
    return 1
  else
    i = 1
    until number == 0
      i *= number
      number -= 1
    end
    return i
  end
end