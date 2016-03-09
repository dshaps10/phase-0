// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Input: Votes object
// Output: Object with winners in political position
// Add the ability to take votes from each person, who have voted for a person in each category.
// Tally the votes for each candidate.
//   Take each category and iterate through to get the names, for any repeated names add one vote
// Use the vote counter to get the person with the highest amount of votes
//   Assign thatt person to that position (president, vice president, etc.)

// __________________________________________
// Initial Solution

function voteTallyer() {
  for (var voter in votes) {
    for (var position in voteCount) {
      if (voteCount[position].hasOwnProperty(votes[voter][position])) {
        voteCount[position][votes[voter][position]] += 1;
      }
      else {
        voteCount[position][votes[voter][position]] = 1;
      }
    }
  }
}

voteTallyer();


function winner() {
  for (var position in voteCount) {
    var highestVotes = 0;
    var elected;
    var votes = voteCount[position];

    for (var name in votes) {
      if (votes[name] > highestVotes) {
        highestVotes = votes[name];
        elected = name;
      }
    }
    officers[position] = elected;
  }
  console.log(officers);
}

winner();

// __________________________________________
// Refactored Solution




function winner(office) {
  var highestVotes = 0;
  var elected;

  for (var candidate in office) {
    if (office[candidate] > highestVotes) {
      highestVotes = office[candidate];
      elected = candidate;
    }
  }
  return elected;
};

for (var position in voteCount) {
  officers[position] = winner(voteCount[position]);
}


console.log(officers);
// __________________________________________
// Reflection






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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
// Reflection
/*
Q: What did you learn about iterating over nested objects in JavaScript?
A: This particular exercise really challenged my knowledge of nested data structures
and how to access nested values within a JavaScript object.  This challenge introduced
the concept of nested for loops which you can use to first access an outer data
structure as well as the collections within it.

Q: Were you able to find useful methods to help you with this?
A: Using the hasOwnProperty method was extremely useful in this exercise.  This allows
you to check whether an object has a specified property as a direct property of that object.  It proved to be useful for pulling out the names of the candidates running
for political office and pushing them to the voteCount object.

Q: What concepts were solidified in the process of working through this challenge?
A: The concept of using for each loops to loop through  a collection is becoming
easier and easier with each subsequent exercise. Also, working with nested for loops,
which I had never before done, showed a useful, albeit roundabout way, in which to
access values within nested data structures.
*/
