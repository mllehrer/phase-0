#Pseudocode
# Methods with 5 different methods,
# 1st -> create a list, with help of hash

def make_list(item, quantity)
  groceries = { item => quantity}
  return groceries
end
list = make_list("lemonade", 2)

p list


def add_item(item, quantity, list)
  list[item] = quantity
  return list
end

p add_item("tomatoes", 3, list)
p add_item("onions", 1, list)
p add_item("ice cream", 4, list)


def remove_item(item, list)
  list.delete(item)
  return list
end

p remove_item("lemonade", list)

def update_quantity(item, quantity, list)
  list[item] = quantity
  return list
end

p update_quantity("ice cream", 1, list)

def print_list(list)
  list.each do |item, quantity|
    puts "#{item} : #{quantity}"
  end
end

  print_list(list)

# key -> ingre. value -> quantity
# keys will symbols,

# 2nd -> add item with qty
  # tomatoes, qty 3
  # onions, qty 1
  # ice cream, qty 4
#delete(key) → value

# 3rd -> remove the item from the list

# 4th -> update quantities of the list
# 5th -> prints the lists

#What did you learn about pseudocode from working on this challenge?
#I had been doing a lot of pseudocode already. Sometimes it changes dramatically!

#What are the tradeoffs of using Arrays and Hashes for this challenge?
#We decided to use a hash because we wanted the extra layer of information that a hash could provide. Instead of having to access both the item and the quantity seperately, we could access and change both with the same line of code.
#What does a method return?
#A method returns the results of the most recent process.
#What kind of things can you pass into methods as arguments?
#Any kind of variable
#How can you pass information between methods?
#You can make sure that information is accessible outside of the method by storing the method's result as a variable, and calling the next method on that result.
#What concepts were solidified in this challenge, and what concepts are still confusing?
#Passing information without using classes makes a lot more sense now, and by corollary I feel more clear on the difference between local and instance variables.