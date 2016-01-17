// Pseudocode

// Create a grocery list object.  An object makes the most sense because it can store keys and values allowing each to be accessed and changed pretty easily.

// Function to add an item to a list
// Input: List, item, quantity
// Steps: Add new item to the list with a quantity
// Output: The new list

// Function to remove an item from the list
// Input: List and item
// Steps: removing the item from the list
// Output: The modified list

// Function to update the quantity of an item
// Input: List, item and quantity
// Steps: Access the item and change the quantity
// Output: The list with the modified quantity

// Function to print a list and make it look pretty
// Input: The list
// Steps: Print the list and the quantities with in a neat and orderly fashion.
// Output: The beautified list.




// Initial Solution

// var groceryList = {};
// // console.log(groceryList)

// function newItem(food, num) {
//    groceryList[food] = num
//  };

// newItem('bread', 1)
// newItem('tomato', 2)
// newItem('pizza', 6)
// // console.log(groceryList)

// function removeItem(food){
//   delete groceryList[food]
// };

// removeItem('bread')
// // console.log(groceryList)

// function updateItem(food, num){
//   groceryList[food] = num
// };

// updateItem('pizza', 2)
// updateItem('tomato', 4)
// // console.log(groceryList)

// function printGroceryList(groceryList){
//   console.log(food + ":" + groceryList[food]);
// };
// console.log(groceryList)


// // Refactor

var groceryList = {
};

function newItem(food, num) {
   groceryList[food] = num
 };


function removeItem(food){
  delete groceryList[food]
};


function updateItem(food, num){
  groceryList[food] = num
};

function printGroceryList() {
  console.log("Grocery List")
  for (var food in groceryList) {
    console.log(food,':',groceryList[food])
  };
};


// Driver Code:

newItem('bread', 1)
newItem('tomato', 2)
newItem('pizza', 6)
// console.log(groceryList)
removeItem('bread')
// console.log(groceryList)
updateItem('pizza', 2)
updateItem('tomato', 4)
// console.log(groceryList)
printGroceryList()

// Reflection

// 1.  What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

// I reviewed how to set up functions and how to update information in an object.

// 2.  What was the most difficult part of this challenge?

//  I think the most difficult part of this challenge was trying not to let Ruby syntax slip into my JavaScript code. I think that sometimes I get caught up in the solution and forget to pay attention to syntax.\

// 3.  Did an array or object make more sense to use and why?

//  I thought that an object made more sense because it allowed for each food item on the list to be a property of the groceryList which easily set up name value pairs for me to iterate through.