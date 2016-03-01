// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var myName = "Dan Shapiro"
console.log(myName);

prompt("What's your favorite food?")
console.log("Hey! that's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//FiizBuzz

for(var i = 1; i <= 100; i ++ )
  if(i % 3 === 0 && i % 5 === 0){
    console.log("FizzBuzz");
  } else if(i % 3 === 0)  {
    console.log("Fizz");
  } else if(i % 5 === 0) {
    console.log("Buzz")
  } else {
    console.log(i);
  }

// Functions

// Complete the `minimum` exercise.
console.log(Math.min(5, 20));


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Dan Shapiro",
  age: 23,
  favoriteFoods: ["Pizza", "Pasta", "Meatballs"],
  quirk: "I really hate wearing socks"
}

//Read and Respond
/*
INTRODUCTION

Q: Did you learn anything new about JavaScript or programming in general?
A: It was cool to learn about the roots of JavaScript and how it is the first real
language of the web.  We can really thank JavaScript for making modern web
apps dynamic and refletive of real software.

Q: Are there any concepts you feel uncomfortable with?
A: Perhaps the constant usage of semicolons, but not really.

CH 1: VALUES, TYPES, & OPERATORS

Q: Identify two similarities and two differences between JavaScript and Ruby
syntax with regard to numbers, arithmetics, strings, booleans, &  various
operators.
A: First and foremost, all JavaScript variables are preceded by 'var' before the
variable is actually defined.  JavaScript strings are incapable of string
interpolation and  require the use of '+' or .concat().  JavaScript also compares
values with three '=' like === as opposed to just two like in Ruby. There is also
no implicit return in JavaScript.

CH 2: PROGRAM STRUCTURE

Q: What is an expression?
A: An expression is a fragment of code that produces a value

Q: What is the purpose of semicolons in JavaScript? Are they always required?
A: Semicolons are used to denote the end of an expression and helps break up the code

Q: What causes a variable to return undefined?
A: A variable will return undefined if it is defined without a given value

Q: What does console.log do and when would you use it? What Ruby method is this
similar to?
A: console.log prints the output of an expression to the console.  This is very
similar to puts or p in Ruby

Q: Describe while and for loops
A: While loops cause a block of code to execute while a condition is true and will
continue to execute until that condition is false. This will be infinite unless you
create a way for the function to break. For loops execute a block of code for a
defined number of times.  They are especially useful for iterating over data
structures

Q: What other similarities or differences between Ruby and JavaScript did you
notice in this section?
A: One of the glaring differences was that many of the useful iterators and methods
built into Ruby are nowhere to be found in JavaScript.  You must use for loops
to iterate over a data structure instead of an interator method.  Also, you often
have to type out longer blocks of code to get the same result.  This is due to
Ruby's usage of abstraction layers not present in JavaScript.

CH 3: FUNCTIONS:

Q: What are the differences between local and global variables in JavaScript?
A: A global variable is a variable that can be accessed anywhere in the program.
A local variable is usually created as an function parameter or within the
 function'scode.  Local variables can only be called in the function in which they
are created.

Q: When should you use functions?
A: Functions are extremely useful for creating blocks of code that you want to
reuse.  For instance, if there is a certain type of calculation that you created
from scratch it would make more sense to create a function and store it in a
variable where it can be called as opposed to typing the code over and over
again.

Q: What is a function declaration?
A: A function delaration is a shorthand way for creating a function.  It is where
you specify the name of the function, its parameters as well as the block of
code that will run when the function is called.  It is similar to defining a method
in Ruby.

CH 4: DATA STRUCTURES: OBJECTS AND ARRAYS

Q: What is the difference between using a dot and a bracket to look up a property?
A: A dot is used to access a property value and must directly pertain to a valid
variable.  Unlike dot, you can use brackets to search for the value of a variable or
for the value itself because brackets allow for the usage of strings.

*/
