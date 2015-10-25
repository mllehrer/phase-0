# I worked on this challenge with Alicia Quezada.


# Your Solution Below

def valid_triangle?(a,b,c)
  if a+b > c
    p true
  elsif a+c > b
    p true
  elsif b+c > a
    p true
  elsif c+a > b
    p true
  else
    p false
  end
end

#I wanted to see if I could do this with an array, because I just did the array exercises today, and the array methods I learned there worked for this.

def valid_triangle?(a, b, c)
triangle = [a, b, c]
triangle.sort!
  if triangle[2] < triangle[0] + triangle[1]
  p true
  else
  p false
  end
end

 valid_triangle?(3, 4, 5)
#
# Your previous Plain Text content is preserved below:
#
#
#
#Pseudocode
#Input: (a,b,c)
#Output: boolean
#
# if a+b > c, true
# if a+c > b, true
# if c+b > a, true
# else returns false