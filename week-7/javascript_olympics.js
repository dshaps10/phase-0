// JavaScript Olympics

// I paired [with: Erica LLoyd] on this challenge.

// This challenge took me [2] hours.


// Warm Up

// Bulk Up

var athletes = [
  {name:"Sarah Hughes" , event: "Ladies\' Singles"},
  {name: "Bob Hardy" , event: "Long Jump" },
  {name: "Dan Petra" , event: "Shot Put" },
  {name: "Erica Sanders", event: "Hurdles" },
  {name: "Tony Huff" , event: "Skiing" }
];

function addWin(athletesArray){
 for (var i = 0; i < athletesArray.length; i ++){
        var object = athletesArray[i];

        object.win = function() {
           console.log(object.name + " has won " + object.event);
        };
      //object.win();
}
return athletesArray;
}
console.log(addWin(athletes));

// Jumble your words

function reverse(string) {
  var reverseString = string.split("").reverse().join("");
  console.log(reverseString);
  return reverseString;
}

var string = "Dev Bootcamp";
reverse(string);

//2,4,6,8

function even(numberArray){
  var evenArray = [];
  for (var i=0; i < numberArray.length; i++){
    if(numberArray[i] % 2 == 0){
      evenArray.push(numberArray[i]);
    }
  }

  return evenArray;
}

console.log(even([1,2,3,4,5,6,7,8,9]));


//Splice
function even(numberArray){
 for (var i=0; i < numberArray.length; i++){
   if((numberArray[i] % 2) != 0){
     numberArray.splice(i, 1);

   }
 }

 return numberArray;
}

console.log(even([1,2,3,4,5,6,7,8,9]));

// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
/*
Q: What JavaScript knowledge did you solifiy in this challenge?
A: This challenge gave me much more practice with iterating over data structures
in JavaScript.   I got much more practice using for and for/each loops to iterate
over arrays and objects and manipulate the values insie. This challenge also forced
me to be more diligent about explicitly returning values.  JavaScript, unlike Ruby,
doesn't have implicit return so this is something I'll have to keep in mind going
forward. I also learned more about anonymous functions and when you would
use them.

Q: What are constructor functions:
A: Constructor functions are used to create objects much like a class constructor
is used in Ruby to create instances of Ruby classes for initialization.  With a
contstructor function, much like Ruby's initialize method, you can can specify
the properties of an object and properly pass in arguments.

Q: How are constructors different from Ruby classes (in your research)?
A: Object constructors are on a much smaller scale than Ruby classes.  An object
constructor is used to define how objects of a certain class should be created
by entering specific arguments that will be created as properties when the
object constructor is run.  JavaScript, unlike Ruby, doesn't have classes - it uses
prototypes instead - because objects in JavaScript directly inherit from other
objects.  This means that simply using an object constructor of a certain
prototype will ensure that all instances of that prototype will be created in the
same fashion.
*/
