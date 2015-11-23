# Drawer Debugger

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Original Code

class Drawer

attr_reader :contents

def initialize
  @contents = []
  @open = true
end

def open
  @open = true
end

def close
  @open = false
end

def add_item(item)
  @contents << item
end

def remove_item(item = @contents.pop)
  @contents.delete(item)
end

def dump
  @contents = []
  puts "Your drawer is empty."
end

def view_contents
puts "The drawer contains:"
  @contents.each {|silverware| puts "- " + silverware.type }
end
end

class Silverware
attr_reader :type

def initialize(type, clean = true)
  @type = type
  @clean = clean
end

def eat
puts "eating with the #{type}"
  @clean = false
end

def clean_silverware
  @clean = true
end

def clean
  return @clean
end

end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE

silverware_drawer.view_contents
silverware_drawer.add_item(spoon)
silverware_drawer.add_item(spoon)
silverware_drawer.view_contents




# Reflection
# What concepts did you review or learn in this challenge?
#I got to play with driver code a little more and practice with error messages.

# What is still confusing to you about Ruby?
#I'm still a little bit confused about the attr methods. I can kind of see what they're doing but they're not intuitive for me.

# What are you going to study to get more prepared for Phase 1?
#I'm going to make sure I have a thorough understanding of how attr methods work, and I want to get deeper into making objects in Ruby and how they differ from objects in JavaScript.