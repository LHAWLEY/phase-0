// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Make it across a road without getting hit by a car.
// Goals: Cross the road safely.
// Characters: Frog, car, pond
// Objects: Frog, car, pond
// Functions:
//  Frog:
    // Hop across the street,
    // if frog and car are in the same place "Game Over",
    // if frog makes it to the otherside "You made it home!"
//  Car: Move across the street

// Pseudocode
// Create a frog object that has location properties that equal coordinates.
  // Create a function that will make the frog hop in one of four directions (left, right, up, down) by changing the coordinates of the frog.
  // If the frog has the same coordinates as the car - Game Over
  // If the frog has the same coordinates as the pond - You made it Home!
// Create a pond object that has random coordinates
// Create a car object that has random coordinates
  // Have the car move everytime the frog moves.

//

// Initial Code
// var frog = {
//   posX: 0,
//   posY: 0,

// // Make frog move
// hop: function(direction) {
//   if (direction === 'forward'){
//     frog.posY += 1;
//   }
//   else if (direction === 'backward'){
//     frog.posY -= 1;
//   }
//   else if (direction === 'left'){
//     frog.posX -= 1;
//   }
//   else if (direction === 'right'){
//     frog.posX += 1;
//   }


// //Show where the frog is.
// console.log("Frog is " + frog.posX + "," + frog.posY);

// //Make the car move when the frog moves.
// car.posX = Math.floor(Math.random() * (15) + 1);
// car.posY = Math.floor(Math.random() * (15) + 1);
//   console.log("Car is " + car.posX + "," + car.posY);

// // Check to see if the frog is dead or home.
// if(frog.posX === car.posX && frog.posY === car.posY){
//   console.log("Game Over!");
// }

// else if(frog.posX === pond.posX && frog.posY === pond.posY){
//   console.log("You made it home!");
// }
// }
// };

// var pond = {
//   posX: Math.floor((Math.random() * 50) + 1),
//   posY: Math.floor((Math.random() * 50) + 1)
// };

// var car = {
//   posX: 0,
//   posY: 0
// };

// frog.hop('left');
// frog.hop('right');
// frog.hop('forward');
// frog.hop('backward');

// Refactored Code
var frog = {
  posX: 0,
  posY: 0,

  hop: function(direction) {
    if (direction === 'forward') {
      this.posY += 5;
    } else if (direction === 'backward') {
      this.posY -= 5;
    } else if (direction === 'left') {
      this.posX -= 5;
    } else if (direction === 'right') {
      this.posX += 5;
    }
    console.log("Frog is " + this.posX + "," + this.posY);
  }
};

var gameStatus = function(frog, car) {
  if(frog.posX === car.posX && frog.posY === car.posY){
    console.log("Game Over!");
  } else if(frog.posX === pond.posX && frog.posY === pond.posY){
    console.log("You made it home!");
  }
}

var takeTurn = function(direction) {
  frog.hop(direction);
  car.drive()
  gameStatus(frog, car)
}

var pond = {
  posX: Math.floor((Math.random() * 50) + 1),
  posY: Math.floor((Math.random() * 50) + 1)
};

var car = {
  posX: 0,
  posY: 0,

  drive: function() {
    this.posX = Math.floor(Math.random() * (15) + 1);
    this.posY = Math.floor(Math.random() * (15) + 1);
    console.log("Car is " + this.posX + "," + this.posY);
  }
};

takeTurn('forward');
takeTurn('right');
takeTurn('forward');
takeTurn('backward');
takeTurn('right');
takeTurn('forward');
takeTurn('left');
takeTurn('forward')

// Reflection
//
//  What was the most difficult part of this challenge?

//  The most difficult part of this challenge was figuring out where to start.  I am not the most creative so it was hard to come up with a kind of game I wanted to create and what should happen in the game with out getting too complicated.  I was initially just going to make a game where someone was running a race and had to avoid pot holes and get to the finish.  Then I thought that sounded an aweful lot like frogger so I created a frogger(ish) game.  I think that I will be able to build off of it in the future to make it more like the actual game.

// What did you learn about creating objects and functions that interact with one another?

//  I learned that you can create objects and functions pretty easily.  I moving from my initial to my refactored solution I decided that it was probably best practice to keep the functions related to individual objects all together so that everything did not get to jumbled and I think that it flows a little bit better that way.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// I learned how to pick a random number which is a little different in JavaScript than it is is Ruby.  I thinkt the JavaScript way is a bit harder to read.

// How can you access and manipulate properties of objects?

// You can call an object and change its properties outside of the function.  In my game I called takeTurn and manipulated the location of my frog.