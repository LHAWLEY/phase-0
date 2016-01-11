// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Karen Ball
// This challenge took me [3] hours.

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
}

// Pseudocode
/*
// Iterate through the votes object
// Record each student's vote in the voteCount object
// Tally the number of votes each person received
// Store the winner's names in the officers object
*/
// __________________________________________
// Initial Solution

var votesNamesArray = Object.keys(votes);
// console.log(votesNamesArray)

// Go through votes properties which are the names
for (var x = 0 ; x < votesNamesArray.length; x++) {

  // Go through the position votes for each person
  var votesPosArray = Object.keys(votes[votesNamesArray[x]]);
  // console.log(votesPosArray);

  // console.log(votesNamesArray[x])
  for (var y = 0; y < votesPosArray.length; y++) {

    // We need to get the positon
    var position = votesPosArray[y];
    // console.log(position)


    // Need to figure out who is elected in that position
    var nameElected = votes[votesNamesArray[x]][position]

    // console.log(nameElected)


    // console.log('\n')


    // Add up votes for each position for each person
    if (isNaN(voteCount[position][nameElected]) == true) {
      voteCount[position][nameElected] = 1;
    }

    else {
      voteCount[position][nameElected] += 1
    }
  }
}

// console.log(voteCount)

var presMaxNum = 0;
var presMaxName = 0;
var viceMaxNum = 0;
var viceMaxName = 0;
var secMaxNum = 0;
var secMaxName = 0;
var treMaxNum = 0;
var treMaxName = 0;

var positionArray = Object.keys(voteCount);
// console.log(positionArray);
  for (var x = 0; x < positionArray.length; x++){
  //console.log(positionArray[x]);
  var nameArray = Object.keys(voteCount[positionArray[x]]);
  // console.log(nameArray)
  for (var y = 0; y < nameArray.length; y++){
    //console.log(nameArray[y])


var position = positionArray[x];
var name = nameArray[y];

    if ((x==0) && (voteCount[position][name] > presMaxNum)) {
      presMaxNum = voteCount[position][name];
      presMaxName = name;
    }

    if ((x==1) && (voteCount[position][name] > viceMaxNum)) {
      viceMaxNum = voteCount[position][name];
      viceMaxName = name;
   }

    if ((x==2) && (voteCount[position][name] > secMaxNum)) {
      secMaxNum = voteCount[position][name];
      secMaxName = name;
    }

    if ((x==3) && (voteCount[position][name] > treMaxNum)) {
      treMaxNum = voteCount[position][name];
      treMaxName = name;
    }
  }
}

officers.president = presMaxName;
officers.vicePresident = viceMaxName;
officers.secretary = secMaxName;
officers.treasurer = treMaxName;

// console.log(officers)

// __________________________________________
// Refactored Solution

// I still need to go back in and refactor this challenge.  I was lucky to make it work in time.  I know that I can get some of the repetitive loops down so that is what my focus is going to be when refactoring.

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?

// I learned that iterating over nested objects in JavaScript is easy in theory (like Ruby), but I found that my pair and I really struggled to get through this challenge.  We found ourselves getting stuck trying to figure out how to store and retrieve information and also how to access the specific information we needed.

// Were you able to find useful methods to help you with this?

// In the initial solution I used Object.keys() to pull out all of the keys in the big hash.  Other than that I just used a lot of loops and I think that when I refactor I can minimize those.

// What concepts were solidified in the process of working through this challenge?

// I think that interating through nested arrays was somewhat solidified.  I still need some work in it though.  I think that I mostly struggled with wrapping my head around managing all of the data that we needed.  And as you can probably tell by my solution I solidified looping in JavaScript which was a pretty good thing I think.

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