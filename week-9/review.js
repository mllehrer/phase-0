/*User Stories
As a user, I want to be able to create a new grocery list with spaces for items and quantities, easily add an item and quantity to the list, and be able to edit the list by either updating the quantities or removing an item.*/
//Pseudocode

//Creating a new list
//Input: An item and a quantity
//Output: A data structure that associates the item with the quantity
//Make a function that will define an empty data structure
//Make spaces for item and quantity within the data structure

//Adding an item (w/qty) to the list
//Make a function that accesses the empty item and quantity slots in the data structure
//Add the item to the item slot and that quantity to the quantity slot

//Updating an item's quantity
//Make a function that accesses the quantity for a specific item
//And changes it to the new specified quantity

//Removing an item
//Make a function that accesses the specified item and quantity
//and removes them both

//Initial solution


var groceryList = {
};

var addItem = function(item, quantity){
  groceryList[item] = quantity;
}

var updateQty = function(item, quantity){
if (groceryList[item] === undefined){
  console.log("No such item found.");
} else {
  groceryList[item] = quantity;
};
}

var removeItem = function(item){
if (groceryList[item] = undefined){
  console.log("No such item found.");
} else{
  delete groceryList[item];
};
};

//Refactored solution
//make this a function that can be called
var makeList = function(){
  groceryList = {
};
}
var addItem = function(item, quantity){
  groceryList[item] = quantity;
}

var updateQty = function(item, quantity){
if (groceryList[item] === undefined){
  console.log("No such item found.");
} else {
  groceryList[item] = quantity;
};
}

var removeItem = function(item){
if (groceryList[item] = undefined){
  console.log("No such item found.");
} else {
  delete groceryList[item];
};
};

//Driver test code
makeList()
console.log(groceryList)
addItem("cranberries", 2)
console.log(groceryList)
updateQty("potatoes", 3)
updateQty("cranberries", 1)
console.log(groceryList)
removeItem("cranberries")
console.log(groceryList)

/* What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
I feel a lot more comfortable about working with nested objects, creating objects, and calling functions.

What was the most difficult part of this challenge?
Debugging my syntax errors! The semicolons are very confusing, and even though we were told to use them all the time, Node won't run code if the semicolons are in the wrong place.

Did an array or object make more sense to use and why?
An object for sure, because within the grocery list each item needed to have a name and a quantity, and both must be able to be edited.
*/
