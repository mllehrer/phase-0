
// Release 2: User Stories to Pseudocode (Malia Lehrer)

// Input: An ordered list of integers
//   The tests include two lists:
//   An "odd list" of 7 values [1, 2, 3, 4, 5, 5, 7]
//   And an "even list" of 8 values [4, 4, 5, 5, 6, 6, 6, 7]
// Three fucntions are needed.
// Output function 1: The sum of the list
// Output function 2: The mean of the list
// Output function 3: The median of the list

// Sum function
// Input: An ordered list of integers
// Output: The sum of the list

// Set up a For loop
// Set a variable equal to the length of the list
// Set a counter equal to 0
// Set a sum variable = 0
// While the counter is less than the length of the list,
//   add one to the counter each loop
//   add the value at the counter (array[counter]) to the sum variable

// Return the value of the sum variable



// Mean function -- Decimals are ok!
// Input: An ordered list of integers
// Output: The mean of the list
//Set a variable equal to the length of the list
// Sum all the numbers in the array together, perhaps using the above pseudocode, or a better way if you think of one
//Divide the sum of the array by the length variable

//Return the result of this operation

// Median function
// Input: An ordered list of integers
//Output: The median of the list, which will be the middle number in the odd list and the average of the two middle numbers in the even list

//Set a variable equal to the length of the list
//Set a variable equal to the index divided by 2, rounded down (half)
//If the length is not divisible by 2 (odd)
// Return the value at the index of (half + 1)
//Else
//  Set a variable equal to the value at the index of half and index
//  of (half + 1), divided by 2
//  Return the resulting variable
