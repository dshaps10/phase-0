
// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .Katherine

// Pseudocode
/*
Input: integer
Output: string of numbers with commas

1. Assign integer to a variable
2. Create a function that takes variable containing integer as an argument
3. Check to see if integer > 3 digits; if so, execute code block
4. Convert integer to string
5. Split each character into different values in an array
6. Reverse array
7. Create a counter starting at index 2
  - Place comma at index 2
8. Place comma every three indexes until no longer possible
9. Reverse array again
10. Join array into one string.
11. Print string to console.


*/
// Initial Solution

/*
for(i = 2; i < array.length; i + 3) {
  insert comma
}
*/

var integer = 10000000000000


var separateComma = function(num) {
  var string = num.toString();
  var splitString = string.split("");
  var reverseString = splitString.reverse();

  var startIndex = 3
  while (startIndex < reverseString.length) {
    reverseString[startIndex] += ",";
    startIndex += 3
  }
  reverseString.reverse();
  var final = reverseString.join('');
  console.log(final);
}

separateComma(integer);



// Refactored Solution

var separateComma = function(num) {
  var reverseString = num.toString().split("").reverse();

  for (var i = 3; i < reverseString.length; i += 3) {
    reverseString[i] += ","
  }
  reverseString.reverse();
  var final = reverseString.join('');
  console.log(final);
}

separateComma(integer);
// Your Own Tests (OPTIONAL)




// Reflection
/*
Q: What was it like to approach the problem from the perspective of JavaScript? Did
you approach the problem differently?
A: Despite using a different language this time around, we took the same approach
as we did when completing this challenge in Ruby.  Even though JavaScript has
different methods than Ruby it still has comparable functionality, allowing us to
not have to use too many work arounds.  The only real difference was the lack of
array iterator methods.

Q: What did you learn about iterating over arrays in JavaScript?
A: Unlike Ruby, JavaScript doesn't allow for array iterator methods.  Because of
this, we were required to use more conventional for loops.  When using a for loop,
you specify parameters and data structure name much like you would in an array
iterator except for the lack of a .each method.

Q: What was different about solving this problem in JavaScript?
A: The use of the for loop actually made solving this problem easier in JavaScript.
In Ruby, I felt compelled to stick to the array iterators that are built in to the
language, requiring me to create separate variables for counter.  When using
a for loop in JavaScript, however, I was able to build that alll into the condition,
thus saving space, and making the code more readable.

Q: What built-in methods did you find to incorporate in your refactored solution?
A: The four methods that we used were toString(), split(), reverse() and join().
toString()takes an integer as input and converts it to a string; split() takes a
string and splits it into separate array elements; reverse() literally reverses the
order of array elements; and join() creates one, cohesive string from all the
elements of an array.
*/
