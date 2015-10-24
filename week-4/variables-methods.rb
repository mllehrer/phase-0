def full_name_greeting
  puts "Hello! What is your first name?"
  fname = gets.chomp
  puts "Hi #{fname}, what's your middle name?"
  mname = gets.chomp
  puts "This is definitely not a background check, but what's your last name?"
  lname = gets.chomp
  puts "#{fname} #{mname} #{lname}, get in here this minute!"
  puts "Just kidding, #{fname}, you're not in trouble, but didn't I sound just like your mom?"
end
full_name_greeting

def better_number
  puts "Hey stranger, what's your name again?"
  name = gets.chomp
  puts "Ah, #{name}, it's you. Your hair looks great today. Hey, my friend is doing a survey for her thesis project. What's your favorite number?"
  fav = gets.chomp
  newfav = fav.to_i + 1
  puts "Mmhmm. I see, yes, #{name}, it is a lovely number, but well..."
  puts "Wouldn't #{newfav} just be, I don't know, better? What do you think?"
  input = gets.chomp
  puts "Interesting. Well, if you get a call from a government agency in the near future, don't tell them about this."
end
better_number

# Address link: https://github.com/mllehrer/phase-0/tree/master/week-4/address

#Math link: https://github.com/mllehrer/phase-0/tree/master/week-4/math

#How do you define a local variable?
#A variable that is assigned within a method (or a class, etc.) and is accessible only within the bounds it was assigned to. It must be assigned again outside the method to be accessible there.

#How do you define a method?
#A method is a defined block that is give a name and can be called by that name to run all the code within the method. I wrote a program called "Dave" that imitates the way our office maintenance guy interrogates us when we break things, and by calling "Dave" from the command line, people can go through an entire interaction with him.

#What is the difference between a local variable and a method?
#It's almost exactly the difference between a noun and a verb. A local variable is an object on which a method can act. The variable doesn't "do" anything--it can have things done to it. A method is an action or set of actions that are performed on an object. Best illustrated with an example:
# string = "plz capitalize me." (string is the local variable)
# string.capitalize! (capitalize is the method that acts on the string we have stored as string. The ! will make the change permanent.)
# The program will return "Plz capitalize me."

#How do you run a ruby program from the command line?
# "ruby rubyfile.rb"
#How do you run an RSpec file from the command line?
# "rspec thespecfile.rb"
#What was confusing about this material? What made sense?
#I had never used rspec before, so I had a little trouble figuring that one out. I'm just so happy to be working in ruby again and learning more. I had done the codecademy course but I actually think I can solve problems a lot better now than I could the last time I was writing ruby.