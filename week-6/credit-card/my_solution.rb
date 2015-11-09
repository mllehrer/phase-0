# Class Warfare, Validate a Credit Card Number

# I worked on this challenge [by myself, with Joshua Shin].
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: 16 digits
# Output: True or False
# Steps:

#Raise ArgumentError if fewer than 16 digits of input

# Starting with the second to last digit, double every other digit until you reach the first digit.

#Split into array
#Convert all back to integers
#If number has modulo 2
#double number

# Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).

#Join the whole array
#Split the array
#Convert array to integers
#Sum array together

# If the total is a multiple of ten, you have received a valid credit card number!
#If total modulo 10 == 0
#Return True
#Else Return False

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class Array
#     def sum
#         self.inject{|sum,x| sum + x }
#     end
# end

#array.each_with_index {|val, index| puts "#{val} => #{index}" }

class CreditCard

  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new ("Not a valid number. Please try again.")
    end
      @cardnumber = number
    @card_array = []
  end

  def doublehalf

    array = @cardnumber.to_s.split("")
    array.map! { |e| e.to_i }
    new_array = []
    new_array = array.map.with_index { |val, index|
      if index % 2 == 0
        val *= 2
        new_array[index] = val
      else
        new_array[index] = val
      end
    }
    @card_array = new_array
  end

  def sum_all
    @card_array.map! { |e| e.to_s }
    card_num = @card_array.join
    @card_array = card_num.split("")
    @card_array.map! { |e| e.to_i }
    sum = @card_array.inject{|sum,x| sum + x }
    @sum = sum
  end

  def check_card
    doublehalf
    sum_all
    p @sum % 10 == 0 ? true : false

  end

end

  card = CreditCard.new(1111111111111111)
card.check_card

# Refactored Solution

# What was the most difficult part of this challenge for you and your pair?
#The hardest part was figuring out which methods were destructive vs. non-destructive and how to store the results of the methods so we could access them again.

# What new methods did you find to help you when you refactored?

# What concepts or learnings were you able to solidify in this challenge?
#I hadn't seen instance methods in action that much, so it was cool to write a program that included a method that called the results of previous methods, and see that it worked.
