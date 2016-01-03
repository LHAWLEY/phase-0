// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Angelika Yoder.
// Pseudocode
// Accept an integer as an input.
// Convert integer into a string.
// - If the number is less than 4 digits, return the number to the console.
// - If the number greater than 3 digits...
// - Split the string up into individual characters.
// - Starting from the last number, push a comma into the string after every third number.
// - Continue going through the string repetedly pushing a comma after every 3rd character from -1 index to 0.
// - When index 0 is reached, stop.
// - Recombine the string with the commas.
// - Return number with inserted commas as a string.


// Initial Solution

var num = 75657647564756;
var separated = num.toString().split('');
var insertComma = separated.length;

if (insertComma < 4) {
  console.log(num);
}

var index = insertComma;
var numArray = separated;

index -= 3;

while (index > 0) {
  numArray.splice(index, 0, ",");
  index -= 3;
}
numArray = numArray.join('');
console.log(numArray);


Refactored Solution

function insertComma(num){
  var separated = num.toString().split("").reverse();

  for (var i = 3; i < separated.length; i += 4)
    separated.splice(i, 0, ",");

  return separated.reverse().join("");
}
console.log(insertComma(75657647564756));

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// I was really pretty similar to the Ruby approach.  We talked about how we each approached the Ruby challenge and then decided how we wanted/needed to attack this challenge differently.  We dicided to use the approach that my pair had done with her Ruby method with some modifications.

// What did you learn about iterating over arrays in JavaScript?

// Iterating over arrays in JavaScript is very similar to iterating in Ruby.  You still use a loop, but the loop in the languages differ a little bit.

// What was different about solving this problem in JavaScript?

// Instead of creating a method like you would do in Ruby we started out by using an if and while statement, but ended up having a lot of variables in that solution so we tried to combine everything into a function that just had one for loop.  In my Ruby solution multiple if statements, so I would say that this solution is a little bit more short and simple than my Ruby solution.

// What built-in methods did you find to incorporate in your refactored solution?

//  We did not really have much experience with JavaScript methods when we started this challenge so we spent a lot of time searching only to find a method or methods that we could use in our solution.  It looks like many of the methods in JavaScript are the same or similar to Ruby.  For this challenge we used splice, toString, split, reverse, and lenght.
