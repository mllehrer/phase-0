# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
#Fine I'm not going to even pretend I did not just copy and paste my smallest_integer program and reverse the sign. Also I didn't think I needed the bit about it being equal to 0 if 0 was the only thing there so I took that out and it still runs fine.

def largest_integer(list_of_nums)
 if list_of_nums[1] == nil
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
    if list_of_nums[i] < list_of_nums [i + 1]
    list_of_nums[i], list_of_nums[i + 1] = list_of_nums[i + 1], list_of_nums[i]
    end
  end
    return list_of_nums[0]
end
end

#Refactored once more, with methods!
def largest_integer(list_of_nums)
c = list_of_nums.count
list_of_nums.sort!
return list_of_nums[c-1]
end

#I have a question about that: why does list_of_nums.sort.reverse! and then list_of_nums[0] not give the right answer?