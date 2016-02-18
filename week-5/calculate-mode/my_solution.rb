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