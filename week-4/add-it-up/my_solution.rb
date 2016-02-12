# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Sami Zheng].

# 0. total Pseudocode
# make sure all pseudocode is commented out!
=begin
def total(Array)
  For each item in array
    add each item together
  print result
  end
end
=end

# Input: Array
# Output: Sum of Array
# Steps to solve the problem.
# 1. Iterate over each item in Array
# 2. Add each item together
# 3. Print result

# 1. total initial solution
def total(array)
  counter = 0
  array.each do |item|
    counter += item
  end
  p counter
end


# 3. total refactored solution
def total(array)
  array.inject(0) {|sum, i| p sum + i}
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array
# Output: Sentence
# Steps to solve the problem.
=begin
def sentence_maker(array)
  for each item in array
    combine items to make cohesive sentence
  end
end
=end

# 5. sentence_maker initial solution

def sentence_maker(array)
  sentence = ""
  array.each do |item|
    sentence += item + " "
  end
  sentence.capitalize!
  p sentence + "."
end

# 6. sentence_maker refactored solution

def sentence_maker(array)
  p array.join(" ").capitalize << "."
end
