// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: You are trying to get from the East Bay to the food trucks in Golden Gate park.  There will be obstacles like unreliable public transportation, earthquakes, and other barriers to you achieving your goal
// Goals: Get to those food trucks!
// Characters: One character, living in the East Bay
// Objects: BART card, BART train, earthquakes, MUNI Bus, tandem bicycles, cell phone
// Functions:

// Pseudocode
//
//
//
//
//

// Initial Code
var clipperCard = {
  amount: 20
}

var player = {
  money: 60,
  stamina: 100,
  hunger: 0,
  clipperCard: clipperCard
}

function bart() {
}

function uber() {
  var choice = prompt("do you want to go partway or all the way? (choose: part/all)");
  if(choice === "part") {
    return(player.money -= 30);
  }
  else if (choice === "all") {
      return(player.money -= 0);
      console.log("You lose!");
  }
   else {
      return(player.money -= 30)
      console.log("You were babbling and the driver freaked out so he let you out half way");
  }
}

function charityWorker() {}

console.log("It's a Sunday morning in the Bay Area");
console.log("You wake up, your stomach rumbling.");
console.log("You think, 'today, I shall go to the foodtrucks in Golden Gate Park!'");
console.log("You are excited, hungry, and impatient, but beware young mobile food connoisseur...");
console.log("The road ahead contains many a-terror on your journey from the Easternmost nether regions of the Bay to that food truck-laden mecca.");
console.log("Good luck!");

console.log("-------------");

console.log("Here's how the game works...")
console.log("You have $60, 100 stamina and 0 hunger");
console.log("As you play, your hunger will increase and your stamina will decrease");
console.log("Your job is to get to the food trucks before your hunger hits 100 or your stamina reaches 0");
console.log("you will have different options of transportation at each checkpoint. Public transit will be cheaper, but longer and less reliable.  Uber will always be an option but will cost more");
console.log("You won't be able to Uber all the way there without losing all your money");
console.log("Let's begin!")

var first = prompt("You wake up, throw on some clothes and walk outside.  You wonder whether you should take BART or just call an uber to the city.  Which do you choose?")

first.toLowerCase()

if(first === "bart") {
  bart();
} else if(first === "uber") {
  uber();
}

console.log(player.money);

// Refactored Code






// Reflection
//
//
//
//
//
//
//
//
