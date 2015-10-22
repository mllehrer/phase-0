#4.2 Numbers, Letters, and Variable Assignment
##What does `puts` do?
It prints a string that includes a break at the end (unlike `print` which just prints the string).
##What is an integer? What is a float?
An integer is a whole number, positive, negative, or 0. A float is a number with decimal points.
##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know any programming?
Integer division leaves an integer remainder, even if the integer is divisible by the divisor--then the remainder is 0. Float division will divide the number and the answer may contain decimals.
  def years_to_hours(n)
  hours = n * 8760
  puts "There are #{hours} hours in #{n} years."
  end
  years_to_hours(1)

  def decades_to_minutes(n)
  years = n * 10
  hours = years * 8760
  minutes = hours * 60
  puts "There are #{minutes} minutes in #{n} decades."
  end
  decades_to_minutes(1)
##4.2.1
https://github.com/mllehrer/phase-0/blob/master/week-4/defining-variables.rb
##4.2.2
https://github.com/mllehrer/phase-0/blob/master/week-4/simple-string.rb
##4.2.3
https://github.com/mllehrer/phase-0/blob/master/week-4/basic-math.rb

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby can be used as a calculator, although whether the number is an integer or float should be specified, since Ruby will treat these differently.
##What is the difference between integers and floats?
Integers are whole numbers only, and floats are allowed to have decimals.

##What is the difference between integer and float division?
Integer division will produce only the whole number quotient and leave a remainder ("modulus"). Float divistion will produce a decimal quotient.

##What are strings? Why and when would you use them?
Strings are information, usually words, in sequence. They are not interpreted by Ruby as numbers or as code and are usually used to represent speech/written communication. For instance:
  puts "This is a string"
would return the value
  This is a string
but
  "puts This is a string"
returns
  "puts This is a string"
Ruby is recognizing the string rather than code. Ruby also differentiates between numbers in a string, floats, and integers. So
  "5" + "5"
returns `55`,
while
  5 + 5
returns `10`
and
 "5" + 5
returns an error, because you can't add a string and an integer.
##What are local variables? Why and when would you use them?
Local variables store information but are limited to where they were defined.
They can change throughout the code. An example would be:
  local_variable = "String"
  def put_string
    puts local_variable
  end
  put_string
Would return an error, because the local variable is not defined within the method; however,
  def put_string
    local_variable = "String"
    puts local_variable
  end
  put_string
should return "String". I think. Testing in irb.
Yes! I was right!
##How was this challenge? Did you get a good review of some of the basics?
I love Ruby! I didn't actually have to look anything up for the challenges, which is nice. I thought I would have forgotten way more than I did. David Black's book is great and I'm enjoying reading it.