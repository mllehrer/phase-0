// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: Syema Ailia.

// Pseudocode
//Make the number into a string
//Make the string into an array
//Set an index variable equal to the length of the array
//If the length is <4
//Return the number
//Else
//Subtract three from the index each loop While
//the index is greater than 0
//Add a comma each loop
//Join the array into a string
//Return the string


// Initial Solution

// var num = 800000;

//     var numAsString = num.toString().split('');
//     var numIndex = numAsString.length;
//     if (numIndex < 4) {
//       console.log(num);
//     }


//     var index = numIndex;
//     var numArray = numAsString;

//     index -= 3;

//      while (index > 0) {
//      numArray.splice(index, 0, ",");
//      index -= 3;
//       }
//      numArray = numArray.join('');
//       console.log(numArray);




// Refactored Solution

var num = 80000;

    var numArray = num.toString().split('');
    var numIndex = numArray.length;
    if (numIndex < 4) {
      console.log(num);
    }

    numIndex -= 3;

     while (numIndex > 0) {
     numArray.splice(numIndex, 0, ",");
     numIndex -= 3;
      }
     numArray = numArray.join('');
      console.log(numArray);




// Your Own Tests (OPTIONAL)




// Reflection
/* What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  It was very frustrating overall because Ruby is much cleaner and easier to use than JavaScript. The Coderpad JS interface is also kind of buggy, so we ended up having to screenshare, which is much slower than Coderpad was for Ruby.

What did you learn about iterating over arrays in JavaScript?
  It seems like JS and Ruby treat arrays about the same, so that's nice. JS tends to have extra things to do (like in splice, you have to specify that you don't want something to be removed).

What was different about solving this problem in JavaScript?
  All the semicolons! Syntax is pretty clunky and confusing.

What built-in methods did you find to incorporate in your refactored solution?
  We ended up using the splice method, which is similar to the one we used in the Ruby version of this challenge as well.
*/