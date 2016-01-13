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

var groceryList = {};
// console.log(groceryList)

function newItem(food, num) {
   groceryList[food] = num
 };

newItem('bread', 1)
newItem('tomato', 2)
newItem('pizza', 6)
// console.log(groceryList)

function removeItem(food){
  delete groceryList[food]
};

removeItem('bread')
// console.log(groceryList)

function updateItem(food, num){
  groceryList[food] = num
};

updateItem('pizza', 2)
updateItem('tomato', 4)
// console.log(groceryList)


function printGroceryList(groceryList){
  console.log(food + ";" + groceryList[food] ) console.log('\n')
};
console.log(groceryList)


// // Refactor

var groceryList = {};

function newItem(food, num) {
   groceryList[food] = num
 };


function removeItem(food){
  delete groceryList[food]
};


function updateItem(food, num){
  groceryList[food] = num
};


