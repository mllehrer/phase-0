# Your Names
# 1) Malia Lehrer
# 2) Pratik Shah

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity) # take in 2 args string & int

  # hash called library with 3 keys and int values
  library = {
    "cookie" => 1,
    "cake" =>  5,
    "pie" => 7
  }
  error_counter = 3  # counter initialized to 3

  #iterate through hash
  library.each do |food|
    if library[food] != library[item_to_make]  # check to see if item to make is not in the hash
      p error_counter += -1                    # decrement counter by 1
    end
  end

  if error_counter > 0  # if counter is > 0 raise error
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0] #serving-size of that item is the item's value--returns value
  serving_size_mod = order_quantity % serving_size #returns a modulus of more than 0 if your order is not divisible by your serving size

  case serving_size_mod
  when 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}" #Says how many orders to make of that thing
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE" #Lets you know that your order will feed more people than you've requested
  end
end


# REFACTOR
def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   if !library.has_key?(item_to_make)
  raise ArgumentError.new("#{item_to_make} is not a valid input") if !library.has_key?(item_to_make)
#   end

  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size
  leftover = ""
  qty = 0

  library.each do |k,v|
    if(serving_size_mod % v == 0)
      leftover = k
      qty = serving_size_mod / v
    end
  end

  if serving_size_mod == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}; you have #{serving_size_mod} hungry person. May we suggest ordering #{qty} #{leftover}?"
  end
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
