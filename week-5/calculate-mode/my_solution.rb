# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Theo Paul ]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# Array of strings or integers

# What is the output? (i.e. What should the code return?)
# Array of the most frequent values

# What are the steps needed to solve the problem?
=begin
1. Create counter as hash
2. Use array method to iterate over each element
3. Count up each occurance of a number and push to counter hash
4. Create Array
5. Use has hmethod to iterate over each key-value pair
6. Find highest number value
7. Push key to array
8. Print out array elements
=end

# 1. Initial Solution

def mode (array)
  array2 = array.clone
  array2.map! {|i|i.to_s}

  counter = Hash.new(0)

  array2.each do |i|
    counter[i] += 1
  end

  new_array = Array.new

  counter.each do |key, value|
    if value == counter.values.max
      new_array.push(key)
    end
  end

  if array.all? {|i| i.is_a? Integer }
    new_array.map!{|i| i.to_i}
  else
    return new_array
  end
end

p mode([1,1,2,3])


# 3. Refactored Solution

def mode (array)
  array2 = array.clone
  array2.map!(&:to_s) #Shortened method for easier reading

  counter = Hash.new(0)

  array2.each do |i|
    counter[i] += 1
  end

  new_array = [] #converted to bracket notation

  counter.each do |key, value|
    if value == counter.values.max
      new_array << key #used syntactic sugar push method
    end
  end

  if array.all? {|i| i.is_a? Integer }
    new_array.map!(&:to_i)
  else
    new_array
  end
end

p mode([1,1,2,3])

# 4. Reflection
=begin

Q: Which data structure did you and your pair decide to implement and why?
A: We imported the original values as an array.  When we counted up the
frequency of each array element occuring we stored the array element as a
key and the amount of times it was counted as its associated value within
a hash.  We then pushed the keys with the highest count to an array and
printed the contents of that array.

Q: Were you more successful breaking this problem down into implementable
pseudocode than the last with a pair?
A: Writing down the steps was definitely easier this time around.  I broke
down each step based on when I was using different methods.  Since each
method acts as a verb in ruby, and verbs constitute an action, it made
the most sense to break steps down into the methods associated with them.

Q: What issues/successes did you run into when translating your pseudocode
to code?
A: We actually didn't have much trouble converting our pseudocode into
code for this challenge. My pair and I were fairly familiar with the
necessary Enumerable and Array methods that had to be used in this
challenge.  In fact, this proved to be the easiest conversion from
pseudocode into code so far.

Q: What methods did you use to iterate through the content? Did you find
any good ones when you were refactoring? Were they difficult to implement?
A: We used the basic Array#each operator to iterate over the array and
execute the code block on each array element.  We also used the clone
method to make a copy of the original array that would be frozen in time
(which would come in handy later).  At the beginning of the method we used
the to_s method to convert all array elements to strings.  We used the
all? method at the end to check if the cloned array contained integers,
because the original array was changed, and if it did contain integers
we changed the array of strings back to their original integer form using
the to_i method.
=end