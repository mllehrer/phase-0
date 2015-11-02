# Die Class 1: Numeric
# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: an integer greater than 1
# Output: a new die object, with a number of sides equal to the integer, which will return a random number between 1 and the number of sides
# Steps:
#Define the die object as having a number of sides equal to the input
#IF input is not an integer OR is less than 1
  #give an error
#Define method "sides" so it returns the number of sides
#Define method "roll" so it returns a random number between 1 and the number of sides

# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides.is_a?(Integer) && sides > 1
      raise ArgumentError.new("Please input an integer greater than 1.")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
 rand(1..@sides)
  end
end

# die = Die.new(6) # creates a new die object with six sides
# die.sides # returns 6
# die.roll # returns a random number between 1 and 6

# 3. Refactored Solution
#I'm pretty happy with my first solution, actually.



# 4. Reflection
# What is an ArgumentError and why would you use one?
#An ArgumentError is raised when an argument is passed to a method that the method can't work with. Ruby will raise its own, but it's good to write an ArgumentError into the initialize method so it catches the problem right away before attempting to run any class methods on it.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#Raise was new, and so is rand. They were both very straightforward and made a lot of sense. I also hadn't used the is_a? method yet. I know that it wasn't required in the specs but it seemed like a valid ArgumentError to include since someone might try to input "six", which would work with "sides" but not with "roll".

# What is a Ruby class?
#Ruby is an object-oriented language, so it doesn't just work with data and methods. It works with objects, which have attributes (like data) and behaviors (like methods). A class provides the framework to make new objects. Because classes are created by the programmer, an infinite number of new objects are possible.

# Why would you use a Ruby class?
#You would want to use a class when you needed to create multiple objects of the same type. For instance, the die class could be used to make 4-sided, 6-sided, 8-side, 12-sided, and 20-sided dice--everything you need for a tabletop RPG in which no one can be accused of trickery!

# What is the difference between a local variable and an instance variable?
#A local variable is only accessible within the method, loop, etc in which it was created. A local variable assigned within a method must be assigned again outside of the method if that data is to be passed on to the next method. It begins with a lowercase letter. An instance variable begins with @ is accessible within its whole class, regardless of where it was assigned.

# Where can an instance variable be used?
#Instance variables can be used within the class in which they are defined. Since they don't have to be redefined outside of their methods they are great to define as attributes at the beginning of the class.