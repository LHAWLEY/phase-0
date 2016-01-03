// JavaScript Olympics

// I paired [Gary Wong] on this challenge.

// This challenge took me [1] hour.

// Warm Up

// Bulk Up

var olympics_athlete = {
  Sarah_Hughes: "Ladies' Singles",
  Batman: "boomerang",
}

var win = function(array){
  for (var key in array ){
  console.log(key + " won the " + array[key]);
  }
}

win(olympics_athlete);

// Jumble your words

function stringOfWords(string){
  var reversedWord = string.split("").reverse().join("")
  console.log(reversedWord)
}

stringOfWords("hello")

// 2,4,6,8
var numb_array = [1,2,3,4,5,6,7,8];

function even_only(array){
  var new_array = [];
  for (var i = 0; i <= array.length; i++){
    if (array[i] % 2 == 0){
      new_array += array[i];
    }
  }
  return new_array;
}
console.log(even_only(numb_array))

// "We built this city"
function Athlete(name,age,sport,quote){
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

// I learned the difference between constructor and literal functions.  I also solidified how functions are set up. For example where console.log needs to be place in a function. I also solidified how to iterate through a for loop.

// What are constructor functions?

// Constructor functions create a new function object.

// How are constructors different from Ruby classes (in your research)?

// A class in Ruby is an object that creates new objects and defines the behavior of the new objects.

// A constructor in JavaScript is a function that creates new objects.