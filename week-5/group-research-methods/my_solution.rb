# Research Methods

# We spent varying numbers of hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution (Shawn Spears)
def my_array_finding_method(source, thing_to_find)
  p source.select {|word| word.to_s.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  p source.select {|key, value| value == thing_to_find}.keys
end

# Identify and describe the Ruby method(s) you implemented.

# ** Methods used in my_array_sorting_method **
#   array.select -- returns an array containing the elements for the conditions indicated
#   to_s -- turns element into string (this was used to account for the integers in the array)
#   .include? -- checks if element includes object (in this case checks if the word includes
#   thing_to_find)

# ** Methods used in my_hash_finding_method **
#   hash.select -- returns a hash containing the key/value pairs for the conditions indicated
#   .keys -- returns an array of the keys of the key/value pairs indicated

# Person 2 (Trevor Newcomb)
def my_array_modification_method!(source, thing_to_modify)
  source.dup
  i_want_pets.map!{|number| number.is_a?(Integer) ? number + 1 : number}
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each do |name,age|
    source[name] = age + thing_to_modify
  end
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# .map!  - This method just inputs new values into an array.
# is_a?  - This checks if an element is a certain thing, so is_a?(Integer) checks if an element is an integer.
# .each  - This just iterates through an array or hash.



# Person 3
def my_array_sorting_method(source)
# This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
  # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |e| e.to_s.include?(thing_to_delete) }
  p source
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |k| k == thing_to_delete }
  p source
end

# Identify and describe the Ruby method(s) you implemented.
#For the array method I used delete_if? and .include?. Delete_if uses a block to determine what should be removed from the array, and in that block I turned all the elements to strings so they could be checked and then used .include to check all the strings for the offending character and let the method know which ones to remove.
#For the hash method I also used delete_if. This one was simpler because the block was just comparing the key in the hash to the one passed to it.
#I want to note that I told it to p source because these methods are destructive, so they array and hash would be permanently altered, but by themselves the methods return the deleted value, so you have to specify that you want the method to return the result of deleting the value instead.


# Person 5 (Jon Clayton)
def my_array_splitting_method(source)
  source.partition{|element| element.is_a?(Integer)}
end

def my_hash_splitting_method(source, age)
    p source.to_a.partition{|element| element[1] <= age}
end

# Identify and describe the Ruby method(s) you implemented.
# #partition -- makes two arrays from one, placing elements that satisfy boolean into
#               the first array, all others into the second array.
# #to_a -- makes an array out of the elements of a hash
# #is_a? -- tests whether the object is a member of a specific class

#--------------------------------------------------------------------
# Person 1: Shawn Spears

# Release 2: Teach Others

# 1. Identify and describe the Ruby method(s) you implemented.

# ** Methods used in my_array_sorting_method **
#   array.select -- returns an array containing the elements for the conditions indicated
#   to_s -- turns element into string (this was used to account for the integers in the array)
#   .include? -- checks if element includes object (in this case checks if the word includes
#   thing_to_find)

# ** Methods used in my_hash_finding_method **
#   hash.select -- returns a hash containing the key/value pairs for the conditions indicated
#     .keys -- returns an array of the keys of the key/value pairs indicated

# 2. Teach your accountability group how to use the methods
#   Both of the methods I created were fairly similar in that they both relied on the .select
#   method in order to return the information I needed in the correct format. They differ in
#   the format they return information -- array.select returns an array of the elements that
#   meet the conditions you specify (in this case, it returns an array with words that include
#   the thing to find). hash.select, however, returns a hash with the key/value pairs that meet
#   the condition you specify (in this case, it will return pairs with values that equal the
#   thing to find). In order to return ONLY the keys in the form of an array, .keys was utilized.

# 3. Share any tricks you used to find and decipher the Ruby Docs
#   Oh man, to be honest what helps me intially is to control-f keywords that I know will help
#   me find any relevant methods. So I found .select by searching for the keyword "contain"
#   because I figured that would help me find a method that searches through data containing x.
#   Also, if I want the method to return something specific, I would search for that. So for the
#   hash method I knew that I wanted the output to be an array of keys, so I searched "array" in
#   the hash docs and .keys was one of the only methods that came up which worked perfectly!

#--------------------------------------------------------------------
# Person 2: Trevor Newcomb

# Release 2: Teach Others

# 1. Identify and describe the Ruby method(s) you implemented.
#   .map!  - This method just inputs new values into an array.
# .is_a?  - This checks if an element is a certain thing, so is_a?(Integer) checks if an element is an integer.
#     .each  - This just iterates through an array or hash.

# 2. Teach your accountability group how to use the methods


# 3. Share any tricks you used to find and decipher the Ruby Docs
#   What did you learn about researching and explaining your research to others?
#   I learned that the best way to parse Ruby Docs is to really know what kind of method you need
#   by looking for it in another way, like stack overflow, and then instead of looking at answers people
#   have posted, just take away some recommended methods to use and try them out to see how they work,
#   using Ruby Docs as a guideline.

#--------------------------------------------------------------------
# Person 3: ??????

# Release 2: Teach Others

# 1. Identify and describe the Ruby method(s) you implemented.
# Answer here

# 2. Teach your accountability group how to use the methods
#   Answer here

# 3. Share any tricks you used to find and decipher the Ruby Docs
# Answer here

#--------------------------------------------------------------------
# Person 4: Malia Lehrer

# Release 2: Teach Others

# 1. Identify and describe the Ruby method(s) you implemented.
# The methods that I used were delete_if, to_s, and .include for the array, and delete_if for hashes. Delete_if uses a block to determine what to remove from the source. The block that I passed to delete_if for the array turned all the elements into strings (nondestructively) using to_s, because the .include method can be used with strings but not with integers. .include checks to see which strings include the string passed to it. Delete_if will then remove the strings that .include finds. For the hash, I used the block to compare each key in the hash to the key that needed to be removed. Delete_if then removes the ones that return true.

#To get the required result from both of these methods I had to make sure to specify what the method was returning. Delete_if is destructive, so it will permanently alter the source, but it won't return the source unless you it to. Instead, it returns the deleted value, which is not what we want.

# 2. Teach your accountability group how to use the methods
#   .delete_if can be called on any hash or array. It takes a block, so the full thing looks like:
#source.delete_if
#{|key_or_element| key_or_element.does_or_is_this_thing}
#It should be kept in mind what I mentioned above: delete_if will remove what you want it to remove, but then it returns that, so make sure to specify that you want the changed array removed.

# 3. Share any tricks you used to find and decipher the Ruby Docs
# I'm a ctrl+f'er, too, Shawn! I'll go into the section I know I need to look through and then search for keywords. I usually have an idea of how ruby "talks" so sometimes I can land on the method just by searching for what I want it to do. That was how I found include right away.

#--------------------------------------------------------------------
# Person 5: Jon Clayton

# Release 2: Teach Others

# 1. Identify and describe the Ruby method(s) you implemented.
#   #partition -- makes two arrays from one, placing elements that satisfy boolean into
#               the first array, all others into the second array.
#   #to_a -- makes an array out of the elements of a hash or Enumerator
# #is_a? -- tests whether the object is a member of a specific class

# 2. Teach your accountability group how to use the methods
# #partition works elegantly to separate a set of values into two arrays.
#   All you need it a boolean to sort by and use the familiar {|element| expression}
#   that we've seen with #map/#collect.  So array.partition {|element| boolean}
# #to_a turns a hash into an array with each key/value combination an element in the array.
# #is_a?  Trevor doesn't need to be told about #is_a since I borrowed it from him!
#   You just put a class name after it: object_name.is_a?(Class_name).
#   Note that Class_name is capitalized and not in quotes.  This threw me off.

# 3. Share any tricks you used to find and decipher the Ruby Docs
# I really just browse them.  Each time I see more methods than I'll actually use
# to solve the current problem, and that means I might remember those methods the
# next time. So often I do think "I think I saw a method that might do this..."
# I'm also curious about what version of Ruby Docs is the "right" one given
# Coderpad is running 2.2.3 and my laptop, following the DBC instructions, is running 2.2.1