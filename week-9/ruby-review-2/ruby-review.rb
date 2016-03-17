# Reverse Words


# I worked on this challenge [with: Emmett Garber].
# This challenge took me [#] hours.

# Pseudocode
=begin
1. take a string as input
2. split string into separate array values by word
3. reverse each value in the array
4. join and print the array values as one string with each word reversed
=end
# Initial Solution
def reverseString(string)
  splitString = string.split(' ')
  splitString.each do |word|
    word.reverse!
  end
  puts splitString.join(' ')
end


reverseString("This is a string")



# Refactored Solution
def reverseString(string)
  splitString = string.split(' ')
  splitString.each { |word| word.reverse!}
  puts splitString.join(' ')
end


reverseString("This is a string")


# Reflection
