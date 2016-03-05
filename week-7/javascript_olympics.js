// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


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
    object["win"] = function(object) {
    }
    console.log(object.name + " has won " + object.event);
  }
}

addWin(athletes);
console.log(athletes);

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
