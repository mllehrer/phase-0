/*Introduction

I really liked the example in the text that took a simple program from binary into JavaScript. I hadn't seen it so clearly explained before. JavaScript is all new to me, and the author has an engaging writing style in describing its history. I'm a little nervous about moving from Ruby into a program whose primary purpose is running in a browser.

Ch.1
Similarities and Differences:
Similarity: Both JavaScript and Ruby have a type of data on which they perform arithmetic operations
Difference: JavaScript does not differentiate integers from "floats" the way Ruby does.
Similarity: Both languages allow the storage of data in variables
Difference: in order to store something in a variable in JavaScript, you can't just set it to equal. You have to write "var" in front of it.
Bit difference: JavaScript will actually try to run any program you give it, so unlike Ruby where you can't multiply a string and a number, JavaScript will try to do it. However, since you can concatenate strings, JavaScript will concatenate a number and a string instead of adding them. It's called "type coercion" and Ruby definitely doesn't have it.

Ch.2
What is an expression?
  An expression is a fragment of code that produces a value.

What is the purpose of semicolons in JavaScript? Are they always required?
  Semicolons mark the end of statements. There are some cases in which they are not required. We have not learned them yet.

What causes a variable to return undefined?
  If the variable has not been assigned to anything yet, its value is undefined and will return such.

What does console.log do and when would you use it? What Ruby method(s) is this similar to?
console.log prints the results of the program to the console. I think it's closes to "p", since it seems to print numbers when given numbers, instead of a string.

Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

Describe while and for loops
  While loops execute as long as certain conditions are met (as specified by the "while"). For loops execute only during the conditions specified at the beginning. They're really a type of while loop that is more specific.

What other similarities or differences between Ruby and JavaScript did you notice in this section?
  I think the biggest difference for me is that I can run JavaScript programs right in my browser and actually see the results on the page, instead of just within the terminal window. Ruby's actual code looks a lot nicer to me, though; in Ruby I feel like I'm reading and writing in English, and just talking to someone who learned it as a second language, but in JavaScript I feel more like I'm speaking broken Computerese.

What are the differences between local and global variables in JavaScript?
When should you use functions?
What is a function declaration?
Complete the minimum exercise in the eloquent.js file.
*/

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



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
