// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Josh Shin
// This challenge took me 3 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}


// Pseudocode
// Make a new set of properties for voteCount
// A count of zero should be a property of the name
// which in turn should be a property of the office position
//which should be a property of voteCount
// Add 1 to the count for each name every time the name appears within that office position
// Bubble sort the vote counts within each office
// Output the name that matches the highest vote count
// Into the officers object
// As the officer

// __________________________________________
// Initial Solution

for (var key in votes)
{
   if (votes.hasOwnProperty(key))
   {
      var voterName = votes[key];
      for (var officePosition in voterName)
      {
          // important check that this is objects own property
          // not from prototype officePosition inherited
          //voteCount[officePosition][voterName] = 0;
          if(voterName.hasOwnProperty(officePosition))
          {
            //console.log(key + "'s vote is: " + officePosition + " = " + voterName[officePosition]);
            voteCount[officePosition][key] = 0;
          }
      }
    }

};

for (var key in votes)
{
   if (votes.hasOwnProperty(key))
   {
       var voterName = votes[key];

        for (var officePosition in voterName)
        {
          // important check that this is objects own property
          // not from prototype officePosition inherited
          if(voterName.hasOwnProperty(officePosition))
          {
            voteCount[officePosition][voterName[officePosition]] +=1;
          }
        }
    }
};





console.log(voteCount);

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
};

for (var officePosition in voteCount)
{
    var highestVote = 0;
    var office = voteCount[officePosition];
    var officerName = "";
    for (var name in office)
    {
      if (office[name] > highestVote)
      {
        highestVote = office[name];
        officerName = name;
      }
    }
    officers[officePosition] = officerName;
    console.log(officerName + " was elected for " + officePosition + " with " + highestVote
      + " votes.");
}
// __________________________________________
// Refactored Solution
for (var key in votes)
{
   if (votes.hasOwnProperty(key))
   {
      var voterName = votes[key];
      for (var officePosition in voterName)
      {
          if(voterName.hasOwnProperty(officePosition))
          {
            voteCount[officePosition][key] = 0;
          }
      }
    }

};

for (var key in votes)
{
   if (votes.hasOwnProperty(key))
   {
       var voterName = votes[key];

        for (var officePosition in voterName)
        {
          if(voterName.hasOwnProperty(officePosition))
          {
            voteCount[officePosition][voterName[officePosition]] +=1;
          }
        }
    }
};





console.log(voteCount);

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
};

for (var officePosition in voteCount)
{
    var highestVote = 0;
    var office = voteCount[officePosition];
    var officerName = "";
    for (var name in office)
    {
      if (office[name] > highestVote)
      {
        highestVote = office[name];
        officerName = name;
      }
    }
    officers[officePosition] = officerName;
    console.log(officerName + " was elected for " + officePosition + " with " + highestVote
      + " votes.");
}





// __________________________________________
// Reflection

/*What did you learn about iterating over nested objects in JavaScript?
It's possible to access any part of an object as long as you understand the path, but understanding the path is the hardest part.

Were you able to find useful methods to help you with this?
Yeah! We used hasOwnProperty to only add counts to each person's vote tally if that vote existed.

What concepts were solidified in the process of working through this challenge?
JavaScript objects have been confusing for me, and learning how to access different properties within an object continues to be something I'm working on, but this challenge helped me practice that.
*/




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
  )