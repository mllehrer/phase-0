# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  if list_of_words.empty?
    return nil
  end
  c = list_of_words.count
  i = 0
    until i == c-1
    i += 1
    if list_of_words[i].length < list_of_words[i-1].length
    list_of_words[i], list_of_words[i-1] = list_of_words[i-1], list_of_words[i]
  end
end
  return list_of_words[0]
end

#Refactoring
def longest_string(list_of_words)
list_of_words = list_of_words.sort_by {|x| x.length }
l = list_of_words.count
return list_of_words[l-1]
end