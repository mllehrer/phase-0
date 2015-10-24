# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase = "Screw you guys" + "I'm going home."
# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
  #while true
   # puts "What's there to hate about #{thing}?"
  #end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#It says "169" but that's because that's the very end of the code and ruby has gone all the way through trying to find the "end" of the loop.
# 3. What is the type of error message?
# It's a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# Ruby was expecting an "end" that it never found.
# 5. Where is the error in the code?
#At the very end.
# 6. Why did the interpreter give you this error?
# Both the while loop AND the method above need an "end." Right now only the method has one.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#36
# 2. What is the type of error message?
#NameError
# 3. What additional information does the interpreter provide about this type of error?
# Undefined local variable or method for the object "south_park"
# 4. Where is the error in the code?
# it's the whole line
# 5. Why did the interpreter give you this error?
# It has no idea what "south_park" is or what you want it to do because you have not assigned it to a variable or defined it as a method.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#50
# 2. What is the type of error message?
#NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#undefined method for object "cartman"
# 4. Where is the error in the code?
#the whole line
# 5. Why did the interpreter give you this error?
# It knows cartman is a method because you have given it an argument. It does not know what cartman does or how to call it because that method has not been defined (i.e. written) yet.

# --- error -------------------------------------------------------

#def cartmans_phrase
  #puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#65
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#It is the wrong number of arguments: 1 for 0
# 4. Where is the error in the code?
#at the end of line 69
# 5. Why did the interpreter give you this error?
#You have fed the method one argument, but the method does not take any. It is confused and sad.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
  #puts offensive_message
#end

#cartman_says("Ruby sucks and so do you.")

# 1. What is the line number where the error occurs?
#84
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments for the method: 0 for 1
# 4. Where is the error in the code?
#When you call it in line 88
# 5. Why did the interpreter give you this error?
# This is the opposite of last time: this time, the method takes an argument but you have not given one. Ruby is a sweet, amenable interpreter and is unable to provide offensive messages on its own.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
  #puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Buttface')

# 1. What is the line number where the error occurs?
#105
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments: 1 given, two needed
# 4. Where is the error in the code?
#At the end of line 109
# 5. Why did the interpreter give you this error?
# You have not directed ruby (as Cartman) to lie to anyone in particular, although you have assured ruby that this lie will be directed at someone by providing an argument for 'name' in the method itself. When you called the method, you did not include this argument. Ruby is distressed. Ruby was not told it would need to lie to a general audience.

# --- error -------------------------------------------------------

#5.times { puts "Respect my authoritay!" }

# 1. What is the line number where the error occurs?
#124
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum : these are two different types of object.
# 4. Where is the error in the code?
# At the *. Kind of.
# 5. Why did the interpreter give you this error?
#You have told it to multiply a string by a number. It can't do this. It can multiply numbers by numbers.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divide by 0
# 4. Where is the error in the code?
# at the /. Kind of.
# 5. Why did the interpreter give you this error?
# You told it to divide by 0. The interpreter does not want to be responsible for the destruction of the universe as we know it. It cannot divide by 0. Even if it could, it wouldn't. It is honorable. Also 0 people cannot eat 20 units of kfc.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 155
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
#It can't load the file you have told it to load
# 4. Where is the error in the code?
#In "require_relative"
# 5. Why did the interpreter give you this error?
#You told it that it needs a file. When it tries to load the required file, it discovers that it cannot. Usually when I get load errors they're because I've typed the path incorrectly, but in this case it's because the file does not exist. Certainly I would not have any essay by Cartman on my computer as its contents are likely illegal to possess.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
#There's a little misdirection in the error where you need the extra "end", because it tells you the error is at the very bottom of all the code when it isn't.
#How did you figure out what the issue with the error was?
#Honestly I have just made this mistake so many times that I knew what the error was going to be before it happened.
#Were you able to determine why each error message happened based on the code?
#Yes! I even had a pretty good idea of what the errors were going to be before running the code. I would like a cookie.
#When you encounter errors in your future code, what process will you follow to help you debug?
#I think the type of error is most informative for me, and based on the error location it gives me and the type of error, I can fix it. Ruby's error messages are really very understandable.
#I want Ruby to be my friend.