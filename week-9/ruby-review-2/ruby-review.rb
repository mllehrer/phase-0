# PezDispenser Class from User Stories

# I worked on this challenge with Syema Ailia
# I spent 1 hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# Make a "create" method for a Pez dispenser that will initialize the dispenser (OUTPUT) with an array of flavors (INPUT)
# Create a method that returns the number of elements in the array
# Create a method that removes the first element (bc that's how pez dispensers work) from the array and returns the new array
# Create a method that adds an element to the array and returns the new array
# Create a method that outputs the array to the console


# Initial Solution

class PezDispenser

  def initialize(flavors)
    @flavors = flavors
  end

   def add_pez(flavor)
    @flavors + [flavor]
  end


  def get_pez
    pez = @flavors[0]
    @flavors = @flavors - [pez]
    return pez
  end

  def see_all_pez
    puts @flavors
  end

  def pez_count
    @flavors.count
  end

end



# Refactored Solution

class PezDispenser

  def initialize(flavors)
    @flavors = flavors
  end

   def add_pez(flavor)
    @flavors.push(flavor)
  end


  def get_pez
    pez = @flavors.shift
    return pez
  end

  def see_all_pez
    puts @flavors
  end

  def pez_count
    @flavors.count
  end

end





# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
# What concepts did you review in this challenge?
#Object creation, array manipulation, reading driver code
# What is still confusing to you about Ruby?
#I'd like to learn some more enumerables and get more comfortable with nested arrays.
# What are you going to study to get more prepared for Phase 1?
# It's tomorrow, so I'll just keep trucking!