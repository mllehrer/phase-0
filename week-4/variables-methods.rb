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
#--How do you define a local variable?
How do you define a method?
What is the difference between a local variable and a method?
How do you run a ruby program from the command line?
How do you run an RSpec file from the command line?
What was confusing about this material? What made sense?