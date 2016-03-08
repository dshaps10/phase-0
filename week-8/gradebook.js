
/*
Gradebook from Names and Scores
I worked on this challenge [with: Jon Norstrom]
This challenge took me [1.5] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

//Release 1
var gradebook = {}


//Release 2
 function add(gradebook, studentAry, scoreAry) {
   for (var i = 0; i < studentAry.length; i++){
      gradebook[studentAry[i]] = scoreAry[i];
   }
   console.log(gradebook);
  }

add(gradebook, students, scores);

// Release 3

 function addScores(gradebook, studentAry, scoreAry) {
   for (var i = 0; i < studentAry.length; i++){
    gradebook[studentAry[i]] = {};
    gradebook[studentAry[i]]["testScores"] = scoreAry[i];
   }
  }

addScores(gradebook, students, scores);

// Release 4
gradebook.addScore = function(name, score) {
  gradebook[name]["testScores"].push(score);
}

// Release 5
gradebook.getAverage = function(){}

// Release 6

function average(array) {
  var counter = 0;
  for (var i in array) {
    counter += array[i];
    var average = counter / array.length;
  }
  return average;
}

gradebook.getAverage = function(name) {
  var counter = 0;
  for (var i in gradebook[name]["testScores"]){
    counter += gradebook[name]["testScores"][i];
    var average = counter / gradebook[name]["testScores"].length;
  }
  return average;
}

// __________________________________________
// Refactored Solution

var gradebook = {}


//Release 2
 function add(gradebook, studentAry, scoreAry) {
   for (var i in studentAry){
      gradebook[studentAry[i]] = scoreAry[i];
   }
   console.log(gradebook);
  }

add(gradebook, students, scores);

// Release 3

 function addScores(gradebook, studentAry, scoreAry) {
   for (var i in studentAry){
    gradebook[studentAry[i]] = {testScores: scoreAry[i]};
   }
  }

addScores(gradebook, students, scores);

// Release 4
gradebook.addScore = function(name, score) {
  gradebook[name]["testScores"].push(score);
}

// Release 5
gradebook.getAverage = function(){}

// Release 6

function average(array) {
  var counter = 0;
  for (var i in array) {
    counter += array[i];
    var average = counter / array.length;
  }
  return average;
}

gradebook.getAverage = function(name) {
  var counter = 0;
  var array = gradebook[name]["testScores"]
  for (var i in array){
    counter += array[i];
    var average = counter / array.length;
  }
  return average;
}




// __________________________________________
// Reflect
/*
Q: What did you learn about adding functions in JavaScript?
A: I learned about the importance of returning the output values from the function.
This is something that I've largely taken for granted since Ruby has implicit return
but I have to make the conscious effort to do so in JavaScript.  I also learned how
you can assign a function to the value of an object's property much like you would
create an instance method in Ruby. This is a great way to build in a function that
can change the state of the properties of an object.

Q: How did you iterate over nested arrays in JavaScript?
A: We used a for each loop.  This works much like the Array#each method in Ruby
where you can create a loop that refers to all values in an array at assigns them
an incrementer value like "i". To access the nested arrays and objects we listed
the nested indexes one after another, much like you would do in Ruby. This way, we
could specifically target the value we were looking for, such as the test_score
in the gradebook object.

Q: Were there any new methods you were able to incorporate? If so, what were
they and how did they work?
A: We didn't incorporate any new methods specifically into this challenge. However,
we did get more practice using JavaScript's built in push method.
*/







// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)
