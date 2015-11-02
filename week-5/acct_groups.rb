# Input: a large array or hash
# Output: several arrays or hashes of four-five people each
# Build an array of names
# Sort that array
# Count the number of people in the array
# Divide that by four
# Create that many empty arrays + 1 for the leftovers
# Fill each array with the first four people, then the next four, etc.

  def group(ppl)
    @all = ppl.sort_by {rand}
    @count = ppl.count
  end
  group(["Syema Ailia", "Alan Alcesto", "Daniel Andersen", "James Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Logan Bresnahan", "William Brinkert", "Scott Chou", "Bernice Anne W Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard", "Ryan Ho", "Igor Kazimirov", "Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina Medellin", "Timothy Meixell", "Lorena Mesa", "Chris Miklius", "Joshua Monzon", "Shea Munion", "Bryan Munroe", "Neal Peters", "Trevor Newcomb", "Aleksandra Nowak", "Fatma Ocal", "Van Phan", "Luis Fernando Plaz", "Natalie Polen", "Alicia Quezada", "Jessie Richardson", "Nimi Samocha", "Zach Schatz", "Tal Schwartz", "Pratik Shah", "Josh Shin", "Shawn Spears", "Sasha Tailor", "Nil Thacker", "Natasha Thapliyal", "Sabrina Unrein", "Brian Wagner", "Clinton Weber", "Gregory Wehmeier", "Michael Whelpley", "Alexander Williams", "Peter N Wood", "Ryan Zell"])

  p @all.each_slice(4).map { |x| puts "#{x.join(", ")} are in a group together."}
