// Manipulating JavaScript Objects

// I worked on this challenge: [by myself, with: ]

// There is a section below where you will write your code.

// DO NOT ALTER THIS OBJECT BY ADDING ANYTHING WITHIN THE CURLY BRACES!
var terah = {
 name: "Terah",
 age: 32,
 height: 66,
 weight: 130,
 hairColor: "brown",
 eyeColor: "brown"
}
// __________________________________________
// Write your code below.
var adam = {}
var adam = {
  name: "Adam"
}
terah.spouse = adam
terah.weight = 125
delete terah.eyeColor
adam.spouse = terah
terah.children = {}
terah.children.carson = {
  name: "Carson"
}
terah.children.carter = {
  name: "Carter"
}
terah.children.colton = {
  name: "Colton"
}
adam.children = terah.children
// __________________________________________
// Reflection: Use the reflection guidelines
/*
Q: What tests did you have trouble passing? What did you do to make it pass? Why did
 that work?
A: When creating the children objects I had trouble stringing together several dot
method calls.  Instead I used object literal notation to create the objects and
inster the required properties.   This ended up working after moving to this
method. This likely worked because I can keep nesting objects within objects using
dot notation.  At some point, I have to use the literal notation to
create the object and its associated properties.

Q: How difficult was it to add and delete properties outside of the object itself?
A: This was not a difficult process.  By simply calling the object name and,
appending the property using dot notation, and then giving it a value, you can
easily create new properties or change the values of existing properties. Also,
using the delete function allows you to easily get rid of unwanted object
properties.

Q: What did you learn about manipulating objects in this challenge?
A: I learned how you can easily create objects using object literal notation. This
gives you the flexibility to add properties from the get-go or simply create an
empty object.  I also learned how you can use dot notation to create new
properties or change the values associated with existing ones.  Lastly, I learned
how you can reference objects in other objects and create objects as properties
within other objects.
*/
// __________________________________________
// Driver Code:  Do not alter code below this line.
function assert(test, message, test_number) {
 if (!test) {
   console.log(test_number + "false");
   throw "ERROR: " + message;
 }
 console.log(test_number + "true");
 return true;
}

assert(
 (adam instanceof Object),
 "The value of adam should be an Object.",
 "1. "
)

assert(
 (adam.name === "Adam"),
 "The value of the adam name property should be 'Adam'.",
 "2. "
)

assert(
 terah.spouse === adam,
 "terah should have a spouse property with the value of the object adam.",
 "3. "
)

assert(
 terah.weight === 125,
 "The terah weight property should be 125.",
 "4. "
)

assert(
 terah.eyeColor === undefined || null,
 "The terah eyeColor property should be deleted.",
 "5. "
)

assert(
 terah.spouse.spouse === terah,
 "Terah's spouse's spouse property should refer back to the terah object.",
 "6. "
)

assert(
 (terah.children instanceof Object),
 "The value of the terah children property should be defined as an Object.",
 "7. "
)

assert(
 (terah.children.carson instanceof Object),
 "carson should be defined as an object and assigned as a child of Terah",
 "8. "
 )

assert(
 terah.children.carson.name === "Carson",
 "Terah's children should include an object called carson which has a name property equal to 'Carson'.",
 "9. "
)

assert(
 (terah.children.carter instanceof Object),
 "carter should be defined as an object and assigned as a child of Terah",
 "10. "
 )

assert(
 terah.children.carter.name === "Carter",
 "Terah's children should include an object called carter which has a name property equal to 'Carter'.",
 "11. "
)

assert(
 (terah.children.colton instanceof Object),
 "colton should be defined as an object and assigned as a child of Terah",
 "12. "
 )

assert(
 terah.children.colton.name === "Colton",
 "Terah's children should include an object called colton which has a name property equal to 'Colton'.",
 "13. "
)

assert(
 adam.children === terah.children,
 "The value of the adam children property should be equal to the value of the terah children property",
 "14. "
)

console.log("\nHere is your final terah object:")
console.log(terah)
