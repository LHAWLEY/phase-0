// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Write your own variable and do something to it.

var erinsPets = 3;
erinsPets = erinsPets - 2;

console.log(erinsPets);

// Program Structure

var favoriteFood = prompt("What is your favorite food?","");
alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
Looping a Triangle
var triangle = "#"
while (triangle.length <= 7) {
  console.log(triangle);
  triangle += "#";
};

// FizzBuzz
// for (var counter = 1; counter <= 100; counter ++){
//   if (counter % 3 === 0 && counter % 5 == 0)
//     console.log("FizzBuzz")
//   else if (counter % 3 == 0)
//     console.log("Fizz")
//   else if (counter % 5 == 0)
//     console.log("Buzz")
//   else
//     console.log(counter)// };
//(figure out where the || operator should go to refactor)

// Chess Board

// Functions
// Complete the `minimum` exercise.

// function min(num1, num2) {
//   if (num1 < num2)
//     return (num1)
//   else
//     return (num2)
// };

// console.log(min(0, 10))
// console.log(min(0, -10))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

// var me = {
//   name: "LeeAnne",
//   age: 28,
//   favoriteFoods: ["cheesecake", "pizza", "grapes"],
//   quirk: "I play the viola",
// };

// console.log(me)


// Reflection

// What are the biggest similarities and differences between JavaScript and Ruby?

// Similarities: You can access elements of an array similarly in both languages.  Writing a function JavaScript is similar to writing a method in Ruby.  It allows you to write code and call that code multiple times throughout your program.  You can use control flow in both languages.  Numbers, strings booleans and arrays are all both similar in the two languages.  You can create variables in both Ruby and JavaScript.  You can execute code in both by calling a method or function depending on the language.  Both languages use control flow to execute multiple lines of code.  You can loop in both languages to run a block of code automatically multiple times.  Functions and methods can both take in specific arguments.

// Differences:  JavaScript has extra comparison operators which are === and !==.  JavaScript uses camel case and Ruby uses snake_case.  Errors are more clear with Ruby than they are with JavaScript which can make debugging easier.  In JavaScript there are special numbers that are considered numbers, but do not act like normal numbers. They are positive and negative infinities (Infinity, -Infinity).  NaN is also the value of a number type and stands for not a number this is a result that is given when an operation does not yield a meaningful result.  In JavaScript semicolons end a statement. The syntax for elsif (Ruby) else if (JavaScript) is different. Comments are are notated with (//) in JavaScript and (#) in Ruby.

// Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?

// Yes, I think by learning JavaScript and seeing the similarities I was able to take the knowledge I have of Ruby and apply it to what we are learning in JavaScript.  Specifically I think that the different types of loops were solidified as well as the different operators and what they are able to do.  I think that this book breaks down some of the program structure elements more clearly than some of the Ruby reading material.

// How do you feel about diving into JavaScript after reading these chapters?

//   I feel prepared.  I think that I will run into issues because nothing we have learned so far is ever as easy as it seems at first, but I think that this book gave us a good first look at what elements we have at our disposal in JavaScript and I think that because it is so seemingly similar to Ruby it will be easier than learning something that does not have any parallels.