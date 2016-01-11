/*
Gradebook from Names and Scores
I worked on this challenge [with: Kurt Schlueter]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

// var gradebook = {};

// for (var x = 0; x < students.length; x++) {

//   // console.log(x)
//   // console.log(students[x])

//   // console.log(gradebook[students[x]] = {});

//   // console.log(scores[x])
//   //console.log(gradebook[students[x]][testScores] = scores[x]);
//   gradebook[students[x]] = {};

//   gradebook[students[x]].testScores = scores[x];
// };

//  var addScore = function(name, score) {
//    gradebook[name].testScores.push(score);
//  }
// gradebook.addScore = addScore;

// var getAverage = function(name){
//  return average(gradebook[name].testScores)
// }

// gradebook.getAverage = getAverage;

// var average = function (arrayInt) {

//   var totalSum = 0;
//   for(var y = 0; y < arrayInt.length; y++) {
//     totalSum = totalSum + arrayInt[y]
//     // console.log(arrayInt[y])
//     // console.log(totalSum)
//     // console.log('\n')
//   }

//   var averageInt = totalSum/arrayInt.length;
//   // console.log(averageInt);
//   return averageInt;
// }

// average([1,2,3,4,5])
// console.log(gradebook['Joseph'].testScores)
// addScore('Joseph', 10)
// console.log(gradebook['Joseph'].testScores)
// __________________________________________
// Refactored Solution
var gradebook = {};

for (var x = 0; x < students.length; x++) {
  gradebook[students[x]] = {};
  gradebook[students[x]].testScores = scores[x];
};

 var addScore = function(name, score) {
   gradebook[name].testScores.push(score);
 }

gradebook.addScore = addScore;

var getAverage = function(name){
 return average(gradebook[name].testScores)
}

gradebook.getAverage = getAverage;

var average = function (arrayInt) {
  var totalSum = 0;

  for(var y = 0; y < arrayInt.length; y++) {
    totalSum = totalSum + arrayInt[y]
  }
  return totalSum/arrayInt.length;
}

// __________________________________________
// Reflect

// What did you learn about adding functions to objects?

//  After the funtion was created we just added it to the object using the . method that we used last week.  So I did not think it was too hard once we figured out how to set up the problem.

// How did you iterate over nested arrays in JavaScript?

//  We iterated over the nested arrays using "for" loops.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?

//  I don't think that we used any new methods in this challenge.  .length and push are both things that I have used in JavaScript or Ruby before and both do pretty much the same thing in both languages.  Other than that we just implimented a few loops and functions to iterate though the data and to capture and store information so that we could use it later in our solution.

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
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)