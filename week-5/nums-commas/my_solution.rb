# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#A positive integer
# What is the output? (i.e. What should the code return?)
#A string of the integer with a comma in front of every group of three numbers
# What are the steps needed to solve the problem?
#Turn the integer into a string
#print the string if it is less than 1,000
#Otherwise, separate the string into groups of three or fewer
#add a comma to every group of three
#print the result

# 1. Initial Solution
def separate_comma(n)
 n = n.to_s
 if n.length < 4
  p n
else
 n = n.reverse
 n = n.split("")
#c = n.count
#  l = (c / 3) - 1
#  p l
#  i = 0
#  until i = l
#  i += 1
#  n[2 + 3i] = n[2 + 3i] + ","
# end
 if n.count < 7
 n[2] = n[2] + ","
 n = n.join.reverse!
 p n
else
n[2] = n[2] + ","
 n[5] = n[5] + ","
 n = n.join.reverse!
 p n
end
end
end


# 2. Refactored Solution

def separate_comma(n) #35123
n = n.to_s.reverse # "32153"
a = n.split("") # ["3", "2", "1", "5", "3"]
a.each_slice(3).map {|x| x.join("").reverse}.reverse.join(",")
#"321".reverse=["123", "53"].reverse = ["53", "123"].join(",")=53,123
end


# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
#I am so proud of myself because I wrote my original solution in about ten minutes. Refactoring took a lot longer because I didn't want the code to just be able to pass the test--I wanted it to work for any integer. I started to try to edit my iterative method to work for any integer but it would take a long time and I only have my lunch break today to do this.

# Was your pseudocode effective in helping you build a successful initial solution?
#Kind of. I think I would have forgotten the first part otherwise. But when I was trying to think about "separating them by groups of three," I didn't know how to do that, so it didn't help my initial code much. I could guess how to separate them into groups of one, and then add a comma to a certain group.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
#It turned out that there is a method that will let me select groups of three: the slice method, which goes through and picks up groups of three and lets me work with just those groups. I had a little trouble because at first I forgot to reverse that group of three initially since I was forgetting it was a string of three now and that reversing the array would not reverse it again. I worked it out by hand with a test case which I've left commented in.

# How did you initially iterate through the data structure?
#I split my string into an array and then moved through the array.

# Do you feel your refactored solution is more readable than your initial solution? Why?
#It's much shorter. It's also better because it allows for any length of integer, which I couldn't figure out how to do without having learned "slice."