# Simple Substrings

# I worked on this challenge with Alicia Quezada.


# Your Solution Below
def welcome(address)
  array = address.split(" ")
  if array.include? "CA"
    p "Welcome to California"
  else
    p "You should move to California"
  end
end

welcome("I wonder what it will do with ca")

#Pseudocode
#Input: Address (string)
#Output: Greeting (string)
#Check each word
#Decide if the word is "CA"
#If the string has the word "CA"
#Returns "Welcome to California"
#If the string does not have the word "CA"
#Returns "You should move to California"
