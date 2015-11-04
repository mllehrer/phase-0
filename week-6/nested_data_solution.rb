# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

#p array[1][2][0]
p array[1][1][2][0]
# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data [:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |i|
  i.is_a?(Array) ? i.map! { |e| e + 5 } : i + 5
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# startup_names.map! do |i| if i.is_a?(Array)
#   i.map! { |e| e.is_a?(Array) ? e.map! { |x| x + "ly" } : e + "ly" }
#   else i + "ly"
# end
#   end
#Refactored for readability
startup_names.map! do |i|
  if i.is_a?(Array)
    i.map! do |e|
      if e.is_a?(Array)
        e.map! { |x| x + "ly" }
      else e + "ly"
      end
    end
  else i + "ly"
  end
end

p startup_names

# What are some general rules you can apply to nested arrays?
#We found that it was sometimes easier to work backwards by starting #with the object you know you are trying to access, and then figuring #out how to access that, and so on.

# What are some ways you can iterate over nested arrays?
#We set up if loops to check which elements were arrays and iterate #through them individually. This seemed like the most logical way to #do it, but I'm looking forward to peer reviewing other challenges #next week and seeing their choices as well.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#We considered using flatten to access every string in the bonus #challenge array, but the parameters weren't clear on whether the #return should retain the original structure and we decided better #safe than sorry.