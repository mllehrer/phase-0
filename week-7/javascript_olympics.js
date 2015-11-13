// JavaScript Olympics

// I paired with: Peter Wood on this challenge.

// This challenge took me 1.25 hours.


// Warm Up
//




var athletes = [
  Venus = {
    name: "Venus Williams",
    event: "Tennis Open"
  },
  Katniss = {
    name: "Katniss Everdeen",
    event: "Archery Finals"
  },
  Donald = {
    name: "Donald Trump",
    event: "Toupee Triathlon"
  },
  Ben = {
    name: "Ben Carson",
    event: "Mumbling Marathon"
  }

]

// Bulk Up

function bulkUp(athletesIn)
{

athletesIn.forEach(function(i) {
  i.win = console.log(i.name + " won the " + i.event)

})
}

bulkUp(athletes)

// Jumble your words

function jumble(sentence)
{
  return sentence.split("").reverse().join("")
}

console.log(jumble("Satellite internet sucks."))

// 2,4,6,8

//Input: An array of integers
//Output: An array of the even integers from the input array

function evenArray(numbers)
{
  function isEven(n)
  {
  return n % 2 === 0
  }
  return numbers.filter(isEven)
}

console.log(evenArray([1,2,3,4,5]))

// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
//I feel much more confident with syntax now! I hadn't spent any time on JavaScript before this week, so everything is completely new. I have a better understanding of functions especially, I think.

// What are constructor functions?
//Constructor functions create new objects along the parameters set in the function. They're actually a lot like Ruby classes, or at least the classes we spent the most time with.

// How are constructors different from Ruby classes (in your research)?
//Ruby classes make objects but a Ruby class is an object in itself; a JavaScript constructor is not--it's a function.
//Objects created in Ruby classes inherit a lot of behaviors, not just the behaviors specified within the class. JavaScript objects only inherit their prototype methods, which are more limited. In order to make a class-like constructor, a lot more behaviors would have to be defined for the prototype object.