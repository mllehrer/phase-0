#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
  attr_reader :name

  def initialize
    @name = Andrew
  end

end

class Greetings
  def initialize
    @name = NameData.new
  end
  def say_hello
    puts "Hello, #{@name.name}!"
  end
end

greet = Greetings.new
greet.say_hello

# greet = Greetings.new
# greet.say_hello


# Reflection
#Release 1:
# What are these methods doing?
#The first method takes in a set of values and assigns them to instance variables. These variables will remain assigned throughout the class until they are changed. The other methods can return these values or change them.
# How are they modifying or returning the value of instance variables?
#The instance variable can be modified by being reassigned within any method, and will remain that value until it is reassigned again. Ruby can either return these values by returning the variable or by printing to the console as it does in the print_info method.

#Release 2:
# What changed between the last release and this release?
#The what_is_age method is gone and an attr_reader method has been added
# What was replaced?
#The what_is_age method has been replaced by the attr_reader method which returns an instance variable
# Is this code simpler than the last?
#Yes, there is one line fewer.

# Release 3:
# What changed between the last release and this release?
#Now there is an attr_writer for :age and change_my_age is gone
# What was replaced?
#change_my_age was replaced with attr_writer :age
# Is this code simpler than the last?
#Yes, there is one line fewer AND now we can query "age" instead of querying the method "change_my_age" to get updated age data.

#Release 6
# What is a reader method?
#A reader method allows an instance variable to be read outside its class.

# What is a writer method?
#A writer method allows an instance variable to be changed outside its class.

# What do the attr methods do for you?
#The attr methods can be reader, writer, or both methods for instance variables initialized within the class. attr_reader is the reader method, attr_writer is the writer method, and attr_accessor makes the variable able to be read and changed.

# Should you always use an accessor to cover your bases? Why or why not?
#No, that's not necessarily a good idea because you don't always want the variables to be able to be changed. Sometimes allowing unwanted changes can lead to bugs later.

# What is confusing to you about these methods?
#I was really frustrated trying to define the argument outside the method in the last challenge. What I really want to do is be able to Greeting.new("Friend"), and I don't know how to make that happen. I don't like just defining the instance variable within the first method. I want to be able to change it.



