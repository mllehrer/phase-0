# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  zero_array = [0]
  if list_of_nums == zero_array
    return 0
  elsif list_of_nums[1] == nil
    return list_of_nums[0]
    elsif list_of_nums.empty?
    if true
    return nil
    end
  else
    c = list_of_nums.count
    i = c-1
    until i == 0
      i -= 1
    if list_of_nums[i] > list_of_nums [i + 1]
    list_of_nums[i], list_of_nums[i + 1] = list_of_nums[i + 1], list_of_nums[i]
    end
  end
    return list_of_nums[0]
  end
end

#With built-in methods
def smallest_integer(list_of_nums)
  list_of_nums.sort!
  return list_of_nums[0]
end