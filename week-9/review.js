// 9.2.1 Translate Ruby to JavaScript
// Exercise: Homework Cheater (week-4 bonus challenge)
// THIS PROGRAM NEEDS TO BE RUN IN THE BROWSER

// Pseudocode
// 1. create a blank array that will house the results of the questions
// 2. prompt the user for the title of the book
// 3. prompt the user for the author of the book
// 4. prompt the user for the date that the book was written
// 5. prompt the user for a brief thesis statement
// 6. prompt the user for the sex of the author
// 7. create function that takes input array values as argument
//     - create parameters for each individual value
//     - create window alert with template essay including input parameters for specific data on author, book etc.
//     - output result to broswer.

// Initial Solution

var input_array = [" ", " ", " ", " ", " "];

var title = prompt("What is the title?");
input_array[0] = title;

var author = prompt("Who is the author?");
input_array[1] = author;

var date = prompt("What is the year of publication?");
input_array[2] = date;

var thesis_statement = prompt("What is your short thesis statement (include a period at the end)?");
input_array[3] = thesis_statement;

var pronoun = prompt("What is the sex of the author (male/female)?");
if (pronoun === "male") {
    input_array[4] = "he";
} else {
    input_array[4] = "she";
}

function essay_writer(index0, index1, index2, index3, index4) {
    alert(index1 + " was an extremely influential author in the year " + index2 + ". " + index4 + " contributed a ton to the field of literature. " + index3 + + " " + index1 + "\'s work will forever be remembered and " + index4 + " will forever go down in the annals of literature history.");
}

essay_writer(input_array[0], input_array[1], input_array[2], input_array[3], input_array[4]);

// Reflection
/*
Q: What concepts did you solidify in working with this challenge?
A: This challenge was mostly about getting familiar with client-side JS and
working with browser features. This meant getting more experience using prompt
and alert to prompt users for input and send them the resulting output,
respectfully. This also gave me more experience with using the DOM and displaying
JS in-browser

Q: What was the most difficult part of this challenge?
A: The most difficult part was translating the input operations from Ruby and
converting them to JavaScript code.  The differences aren't too great, but
JavaScript takes input in fewer steps than Ruby so it was slightly different.

Q: Did you solve the problem in a new way this time?
A: I decided to approach the problem in the same way as I did in the original
Ruby exercise.  This was not out of laziness, but rather, because 1) I thought
the original code was the best possible way to approach this problem and
because doing the code the same way, but in JavaScript, meant that I could much
more easily do a side-by-side comparison between Ruby and JavaScript.

Q: Was your pseudocode different from the Ruby version? What was the same and
what was different?
A: The output of the program was more or less the same.  The differences were
mainly that I used less technical wording in favor of conventional English this
time around and decided to describe each step at a more granular level. My
JavaScript pseudocode ended up being more descriptive and easy to understand.
*/
