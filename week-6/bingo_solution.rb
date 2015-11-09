# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Make a new hash
  #Assign a letter B, I, N, G, O to the key of each element in the hash
  #Assign each array on board to the value of each key
  #Choose a key and value at random
  #Print the key and value as a bingo call

# Check the called column for the number called.
  #Make a new "called" array
  #Add each value from the previous method to the called array

# If the number is in the column, replace with an 'x'
  #Check each value against the called array
  #If the number in the value exists in the called array
  #Replace that number with "x"

# Display a column to the console
  #Print the value for a specific key

# Display the board to the console (prettily)
  #print a newline
  #puts each value in the board hash

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @letters = ["B","I","N","G","O"]
#   end

#   def call
#     i = rand(4)
#     x = rand(4)
#     @current_row = @bingo_board[i]
#     @current_call = @bingo_board[i][x]

#  @letters[i]
#  @current_call
# end

# def check
#  @current_row.map! { |e| if e == @current_call
#     e = "X"
#   else
#     e = e
#   end
#  }
#   print @bingo_board[0]
#   print "\n"
#   print @bingo_board[1]
#   print "\n"
#   print @bingo_board[2]
#   print "\n"
#   print @bingo_board[3]
#   print "\n"
#   print @bingo_board[4]
#   print "\n"
# end
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ["B","I","N","G","O"]
  end

  def call
    i = rand(4)
    x = rand(4)
    @current_row = @bingo_board[i]
    @current_call = @bingo_board[i][x]

 @letters[i]
 @current_call
end

def check
 @current_row.map! { |e| if e == @current_call
    e = "X"
  else
    e = e
  end
 }
end
def print_board
  @bingo_board.each { |row|
  print row
  print "\n"
  }
end
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.print_board


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#I really liked pseudocoding this challenge. Once I finished the pseudocode I felt like I had a thorough grasp on what to do, and just needed to find the methods to do it.

# What are the benefits of using a class for this challenge?
#A bingo board in real live is an object with data and behavior, so it's easily modeled by a ruby class.

# How can you access coordinates in a nested array?
#I like to go backwards and figure out how to get to the coordinate I need first, and then how to get there to begin with.

# What methods did you use to access and modify the array?
#Either each or map depending on whethere I wanted it to be destructive.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#I had never used the newline character before! It ended up being exactly what I needed to make the board look nice

# How did you determine what should be an instance variable versus a local variable?
# If I'm only using that variable within the method, it's a local variable. If I need to be able to access the variable elsewhere in the class, it's an instance variable.

# What do you feel is most improved in your refactored solution?
#I was able to DRY out the code significantly by using "each", and I went ahead and made print_board its own method since it does something very different from check.

