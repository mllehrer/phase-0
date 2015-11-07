# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer
# Output: A response, dependent on that integer
# Steps:
#Identify the answer for the whole class
#Define a method to respond to the guess
#Identify the guess for the whole class
#Respond If the guess is too high with ":high"
#Respond If the guess is too low with ":low"
#Respond If the guess is correct with ":correct"
#Define a boolean for the guess
#If the guess is true, return true
#Else, return false



# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess(guess)
    @guess = guess
    if guess > @answer
      :high
    elsif guess < @answer
      :low
    else
      :correct
    end
  end

  def solved?
    if @guess == @answer
      true
    else
      false
    end
  end
end




# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess(guess)
    @guess = guess
    if guess > @answer
      :high
    elsif guess < @answer
      :low
    else
      :correct
    end
  end

  def solved?
  @guess == @answer ? true : false
  end
end







# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#They change with new input but remain the same for the whole class. This reflects a real-world object because--for instance--when you hit a golf ball with a club, it does not suddenly become a football. If you wanted to hit a football with a club, you would need to go and find a football and bring it out onto the course. Similarly, you would need to initialize ball = Ball.new("football") in code. Also, the club does not suddenly become a foot mid-swing. For that, one would have to define a different Ball#method -- Ball#kick, for instance.

# When should you use instance variables? What do they do for you?
#If your variable is going to stay the same throughout the class, it's better to use an instance variable. Instance variables remain constant through the class, so they don't have to be redefined and passed on through different methods.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is procedural, so it operates logically. I usually think "what has to happen first?" and then make sure that is the first thing the interpreter reads. To use the example above, one cannot kick a football if one has not first brought out the football to kick. Sometimes I have trouble decide where to stick custom error methods because I am not sure if they should be the very first thing the code reads or the thing it tries after it has tried everything else. I'm leaning towards the former but this sounds like a good office-hours question.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#Ruby stores symbols only once in its memory, and a symbols is unique throughout the class. This is different for strings. My understanding is that essentially, every time ruby reads a string, it is defining the string anew, which takes up valuable memory. If you are sure that you will need the same symbol for the same use each time, it's better to do that than a string.
