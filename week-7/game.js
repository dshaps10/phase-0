// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: You are trying to get from the East Bay to the food trucks in Golden Gate park.  There will be obstacles like unreliable public transportation, earthquakes, and other barriers to you achieving your goal
// Goals: Get to those food trucks!
// Characters: One character, living in the East Bay
// Objects:
//Object that keeps track of the health of the MUNI bus
var bus = {
  health: 100
}

//Object that tracks player vitals
var player = {
  money: 60,
  stamina: 100,
  patience: 100
}

// Functions:
function bart() {
  player.money -= 10
  player.patience -= 30
  window.alert("BART saved you some money but definitely took some patience and stamina");
}

//depletes money for uber ride based on how far you want to ride
function uber() {
  var choice = prompt("do you want to go partway or all the way? (choose: part/all)");
  if(choice === "part") {
    player.money -= 30
  }
  else if (choice === "all") {
      player.money -= 60
      window.alert("You lose!");
  }
   else {
      player.money -= 30
      window.alert("You were babbling and the driver freaked out so he let you out half way");
  }
}

//depletes stamina and patience based on first leg of walking
function firstWalk() {
  var choice = prompt("do you want to walk across the city, to the nearest MUNI (bus) station, or halfway across the city? (across/MUNI/halfway)");
  choice.toLowerCase();
  if (choice === "across") {
    player.stamina -= 100
    window.alert("Ooh looks like you're all out of energy...so close!");
  }
  else if (choice === "muni") {
    player.stamina -= 30
    player.patience -= 30
    window.alert("You went on a little walk which took some patience and energy, but you can rest while you wait for the bus");
  }
  else if (choice === "halfway") {
    player.stamina -= 50
    player.patience -= 50
    window.alert("You walked a bit far and you're pretty tired.  You might want to stop and rest!");
  }
  else {
    player.stamina -= 30
    player.patience -= 30
    window.alert("Not sure what you meant there.  Let's just say you stumbled towards the MUNI stop");
  }
}

//depletes stamina and patience for second walking leg
function secondWalk() {
  player.stamina -= 50
  player.patience -= 20
}

//depletes money, patience and stamina based on Muni ride
function muni() {
  var choice = prompt("Do you want to take MUNI all the way across the city, or only as far as the edge of Golden Gate Park? (part/all)");
  choice.toLowerCase();
  if (choice === "part") {
    player.money -= 15
    player.patience -= 20
  }
  else if (choice === "all") {
    bus.health -= 100
    window.alert("Oh no! the MUNI broke down! That'll teach you to trust public transit.  Sorry, but maybe next time.")
  }
}

//This function relays the status of the player
function status() {
  window.alert("You now have " + player.money + " dollars left, " + player.stamina + " stamina, " + "and " + player.patience + " patience." );
}

//This function will check the status and end the program if a property is depleted
function endProgram() {
  if(player.money < 10) {
    window.alert("Sorry, you don't have enough money for breakfast now!");
    throw ("Sorry you lost!");
  }
  else if (player.stamina === 0) {
    window.alert("Sorry you ran out of energy");
    throw ("Sorry you lost!");
  }
  else if (player.patience === 0) {
    window.alert("Sorry you lost your patience and went to a fast food place instead!");
    throw ("Sorry you lost!");
  }
  else if (bus.health === 0) {
    window.alert("Sorry you lost!");
    throw ("Sorry you lost!");
  }
}
// Pseudocode
/*
1. Set the scene
2. Give the player instructions on how to proceed
3. Give option for BART or uber
4. deduct required amount from each
  - If uber, ask if they want to travel half way or all the way
  - if all the way, end the game because of lost money
5. Ask player how to proceed: walk, muni, or uber
  - If walk ask if they want to walk to muni station, halfway, or all the way
    - If all the way, deplete all the stamina and end the game
  - If muni ask if they want to go halfway or part way
    - if part way deplete money and patience
    - If all the way, muni breaks down
6. Player has one more leg of traveling
  - Give option to walk to take uber
  - Evaluate if enough money is left to afford breakfast
7. End game with success message
*/
//Main code
window.alert("It's a Sunday morning in the Bay Area. You wake up, your stomach rumbling. You think, 'today, I shall go to the foodtrucks in Golden Gate Park!'");

window.alert("You are excited, hungry, and impatient, but beware young mobile food connoisseur...the road ahead contains many a-terror on your journey from the Easternmost nether regions of the Bay to that food truck-laden mecca.");

window.alert("Good luck!");

window.alert("Here's how the game works...")

window.alert("You have $60, 100 stamina and 100 patience. As you play, your patience   stamina will decrease. Your job is to get to the food trucks before your patience or stamina drop to 0. You also need at least $10 left over in order to buy breakfast");

window.alert("you will have different options of transportation at each checkpoint. Public transit will be cheaper, but longer and less reliable.  Uber will always be an option but will cost more. You won't be able to Uber all the way there without losing all your money");

window.alert("Let's begin!")

var first = prompt("You wake up, throw on some clothes and walk outside.  You wonder whether you should take BART or just call an uber to the city.  Which do you choose?")

first.toLowerCase();

if(first === "bart") {
  bart();
} else if(first === "uber") {
  uber();
}

//Incremental check on status of player
endProgram();
status();

if(first === "bart") {
  window.alert("You hopped on BART and rode across the Bay into San Francisco.  Unfortunately, Bart only takes you as far as downtown");
  window.alert("You'll have to get a little crafy in order to get across the city and to those delicious food trucks");
}
else if (first === "uber") {
  window.alert("In order to save some money, you only rode Uber to downtown.");
  window.alert("You now have half your money left but plenty of stamina and patience. Riding Uber across the city is too expensive so you'll have to either brave MUNI or walk or a combination of the two.  Good luck!");
}

window.alert("The city is bustling, the smells, both good and bad overwhelm your senses. You see a Chipotle, a McDonalds, your stomach is rumbling.  BUT NO! You are on a mission and you are oh so close.  It's time to soldier on.")

var second = prompt("BART doesn't go across the city so it is no longer an option.  You can walk, take MUNI, or Uber, what do you chose? (walk/MUNI/Uber)")

second.toLowerCase();

if (second === "walk") {
  firstWalk();
}
else if (second === "muni") {
  muni();
}
else if (second === "uber") {
  uber();
}

endProgram();
status();

window.alert("You're almost there! just a little bit further to those tasty tasty food trucks");

var third = prompt("You are on the last leg, do you walk, hop in an uber or MUNI? (walk/uber/muni) remember you need $10 for breakfast");

if (third === "walk") {
  secondWalk();
}
else if (third === "muni") {
  muni();
}
else if (third === "uber") {
  uber();
}

endProgram();
status();

window.alert("congratulations! You've made it to the foodtrucks and with enough money for a breakfast of questionable origin and health.  Good on you young traveler!");

window.alert("Stay tuned for the sequel where we try to get you back to your house...with an impending food coma!");



// Refactored Code






// Reflection
/*
Q: What was the most difficult part of the this challenge?
A: The hardest part was ensuring that there was a method for the player to succeed.
This meant that I had to ensure that when the functions that depleted player
stamina, patience and money were run, they wouldn't cause the player to lose
despite the choices they made.

Q: What did you learn about creating objects and functions that interact with one
another?
A: I learned how you can call functions on the propery of an object and change its
value.  I used functions that would change the value of the player's attributes
by lowering the numeric values based on the player choices.  I also created
functions that would check the status of the player by reading back the object
properties and ending the program if the properties did not satisfy a specified
value.

Q: Did you learn about any new build-in methods you could use in your refactored
solution? If so, what were they and how do they work?
A: I learned about the toLowerCase(); and the throw method.  The toLowerCase();
method is useful when asking for user input. It helps safeguard against users
not using proper capitalization when inputting values. The throw method is
really useful for creating custom errors that can end your program. It's similar to
the raise method when creating errors in ruby.

Q: How can you access and manipulate properties of object?
A: You can access properties of an object similarly to accessing array values.
You type the name of the object with the property in brackets. This allows you
to access the properties.  You can manipulate properties by typing the object
followed by a period and the property name.  You can then use the assignment
operator to assign a new value to it.
*/
