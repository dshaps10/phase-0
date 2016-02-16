#PSEUDOCODE
=begin
define acct_groups function (take array as argument)
  loop through array until empty
  push random sample of array to new array
  display new array with each group on new line
end
=end

#Initial Solution
cohort = ["Adam Pinsky", "Afaan Naqvi", "Alana Farkas", "Andrew Crowley", "Andrew Vathanakamsang", "Anna Lansfjord", "Blair White", "Brad Lindgren", "Brian Donahue", "Brittney Braxton", "Camila Crawford", "Charlie Lee", "Chunyu Ou", "Daniel Homer", "Daniel Shapiro", "David Kaiser", "David Ramirez", "Daniel Deutsch", "Emily Osowski", "Emmet Garber", "Eric Gumerlock", "Gregory Topak", "Hanna Taylor", "Dave Hostios", "Jack Baginski", "Jaclyn Feminella", "Jasmeet Chatrath", "Jason Allen", "Jon Norstrom", "Jonathan Nicolas", "Joseph Yoo", "Joshua Lugo", "Joshua Wu", "Julia Giraldi", "Kari Giberson", "Katherine Broner", "Kevin Fowle", "Kevin Niu", "Kevin Perkins", "Leo Kukhar", "Li-Lian Ku", "Erica Lloyd", "Marita Deery", "Michael Verthein", "Milorad Felvapov", "Brian Mosley", "Nick Russo", "Noah Schutte", "Oscar Delgadillo", "Ryan Dempsey", "Ryan Wilkins", "Sami Zhang", "Sean Norton", "Shyh Hwang", "Sydney Rossman-Reich", "Theo Paul", "Tomasz Sok", "Wesley El-Amin"]

#Minimum Viable Product

def acct_groups(array)
  array.shuffle!
  p group1 = array[0..3]
  p group2 = array[4..7]
  p group3 = array[8..11]
  p group4 = array[12..15]
  p group5 = array[16..19]
  p group6 = array[20..23]
  p group7 = array[24..27]
  p group8 = array[28..31]
  p group9 = array[32..35]
  p group10 = array[36..39]
  p group11 = array[40..43]
  p group12 = array[44..47]
  p group13 = array[50..53]
  p group14 = array[54..57]
end
#make 14 groups of 4


#Refactored
def acct_groups(array)
  array.shuffle!
  group1 = array[0..3].join(', ')
  puts "Group 1: #{group1}"

  group2 = array[4..7].join(', ')
  puts "Group 2: #{group2}"

  group3 = array[8..11].join(', ')
  puts "Group 3: #{group3}"

  group4 = array[12..15].join(', ')
  puts "Group 4: #{group4}"

  group5 = array[16..19].join(', ')
  puts "Group 5: #{group5}"

  group6 = array[20..23].join(', ')
  puts "Group 6: #{group6}"

  group7 = array[24..27].join(', ')
  puts "Group 7: #{group7}"

  group8 = array[28..31].join(', ')
  puts "Group 8: #{group8}"

  group9 = array[32..35].join(', ')
  puts "Group 9: #{group9}"

  group10 = array[36..39].join(', ')
  puts "Group 10: #{group10}"

  group11 = array[40..43].join(', ')
  puts "Group 11: #{group11}"

  group12 = array[44..47].join(', ')
  puts "Group 12: #{group12}"

  group13 = array[50..53].join(', ')
  puts "Group 13: #{group13}"

  group14 = array[54..57].join(', ')
  puts "Group 14: #{group14}"
end

acct_groups(cohort)

#Reflection

=begin

Q: What was the most interesting and most difficult part of this
challenge?
A: The most difficult part of this challenge was figuring out how to not
only pick a random number from the array of students, but to also push
that random list to a new array. This was confusing because there were a
wide variety of array methods from which to choose

Q: Do you feel you are improving on your ability to write pseudocode and
break the problem down?
A: I have found pseudocode to be an extremely useful tool.  By using
pseudocode I can spell out what I want to do as verbosely as possible. I
can then use my pseudocode to research the right method for the job.

Q: Was your approach for automating this task a good solution? What could
have made it better
A: I found that my approach was a good way to hard code as much as
possible and insert methods where necessary.  It's certainly not the
best way to do it, but it did provide a reliable way to randomize and sort
groups.  It would have been much better if I was able to successfully
create a loop that would have incrementally increased the index in the
student array and pushed the output to a new array with minimal hard
coding.

Q: What data structure did you decide to store the accountability groups
in an why?
A: I chose an array for two reasons.  First, Arrays are easy to push to
and required the least amount of complexity.  Second, It wasn't important
to me to have individual keys to indentify each group member, since the
list could remain unordered.

Q: What did you learn in the process of refactoring your initial solution?
Did you learn any new Ruby methods?

A: I learned more about using the join method and how to break you code
into blocks to make it more readable.  The newest method I used in this
challenge was the shuffle method.  I was originally using the Array#sample
method, but this proved challenging when pushing the output to a new
array.  By simply using Array#shuffle and randomly sorting the array at
the beginning of the method, I could keep the array indexes hard coded
into my method and randomize the array at the beginning instead.

=end