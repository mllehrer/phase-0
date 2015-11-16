// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var dinner = "soup", ingredient = "matzo ball "
dinnerTonight = ingredient + dinner
console.log(dinnerTonight)

//prompt("What's your favorite food?")
//alert("Hey! That's my favorite, too!")

/* I have a sinus infection, am hungry, and am trapped on an airplane and I feel sorry for myself so at this point in the text I wrote a "New Jersey Grandmother" program because I miss mine:

alert("Dear, you sound like you have a cold.")
confirm("How about a nice bowl of chicken soup?")
var userOrder = Number(prompt("1 matzo ball or 2?"))
if (userOrder < 2)
alert("Oh, don't be shy! Have another!")
alert("Very good! Eat, eat!")
*/
// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var line = "#", counter = 0;
while (counter < 8) {
  counter++
  console.log(line)
  line = line + "#"
}


// Functions

// Complete the `minimum` exercise.

function min(num1, num2) {
var num1 = num1;
var num2 = num2;

  if (num1 < num2)
      return num1
    else
      return num2 }


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

me = {
  name: "Malia Lehrer"
  age: 26
  favoriteFood1: "Chocolate"
  favoriteFood2: "Sushi"
  favoriteFood3: "BBQ Ribs"
};