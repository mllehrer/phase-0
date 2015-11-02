# Input: a large array or hash
# Output: several arrays or hashes of four-five people each
# Build an array of names
# Randomly sort that array
# Count the number of people in the array
# Divide that by four
# Fill each array with the first four people, then the next four, etc.
#Output the new groups

  def group(ppl)
    @all = ppl.sort_by {rand}
  end
  group(["Syema Ailia", "Alan Alcesto", "Daniel Andersen", "James Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Logan Bresnahan", "William Brinkert", "Scott Chou", "Bernice Anne W Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard", "Ryan Ho", "Igor Kazimirov", "Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina Medellin", "Timothy Meixell", "Lorena Mesa", "Chris Miklius", "Joshua Monzon", "Shea Munion", "Bryan Munroe", "Neal Peters", "Trevor Newcomb", "Aleksandra Nowak", "Fatma Ocal", "Van Phan", "Luis Fernando Plaz", "Natalie Polen", "Alicia Quezada", "Jessie Richardson", "Nimi Samocha", "Zach Schatz", "Tal Schwartz", "Pratik Shah", "Josh Shin", "Shawn Spears", "Sasha Tailor", "Nil Thacker", "Natasha Thapliyal", "Sabrina Unrein", "Brian Wagner", "Clinton Weber", "Gregory Wehmeier", "Michael Whelpley", "Alexander Williams", "Peter N Wood", "Ryan Zell"])

  first = [@all[0], @all[1], @all[2]]
  almost = @all - first
  puts "#{@all[0]}, #{@all[1]}, and #{@all[2]} are in a group together.
  "
  almost.each_slice(4).map { |x| puts "#{x.join(", ")} are in a group together.
  "}
# What was the most interesting and most difficult part of this challenge?
#I kept getting a group of two no matter what I did, so I had to
#figure out how to change that.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
#I think I really dropped the ball on the pseudocode for this one.
#When I was writing it, it didn't occur to me that there would always #be a remainder of two for this cohort size. I ended up having to #rethink that.

# Was your approach for automating this task a good solution? What could have made it even better?
#I'm not sure if it's a good solution. I don't like the idea of #reshuffling accountability groups. I got the sense that that's what
#the challenge wanted, but I would prefer to sort by something
#pseudo-random, like the length of people's names, and then the groups
#would not be alphabetical but would have the same members every time.

# What data structure did you decide to store the accountability groups in and why?
#I ended up outputting a string. The code can easily be tweaked to #make it an array, but I was thinking in terms of how the groups would #be printed and distributed.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#If I had more time I'd like to go back through and figure out how to #make the program store past outputs. I might do that on my own time #later this week. I know this doesn't really answer the question, but
#I ended up using only methods I already knew.

