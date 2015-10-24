# Shortest String

# I worked on this challenge by myself

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Pseudocode
#find length of each string
#sort by string length
#return the first value in the array

#Your Solution Below
def shortest_string(list_of_words)
  if list_of_words.empty?
    return nil
  end
  c = list_of_words.count
  i = c-1
    until i == 0
    i -= 1
    if list_of_words[i].length < list_of_words[i-1].length
    list_of_words[i], list_of_words[i-1] = list_of_words[i-1], list_of_words[i]
  end
end
  l = list_of_words.count
  return list_of_words[l-1]
end

#One-line refactoring
def shortest_string(list_of_words)
list_of_words = list_of_words.sort_by {|x| x.length }
return list_of_words[0]
end